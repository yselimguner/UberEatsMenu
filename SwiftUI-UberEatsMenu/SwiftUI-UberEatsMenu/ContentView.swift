//
//  ContentView.swift
//  SwiftUI-UberEatsMenu
//
//  Created by Yavuz Güner on 2.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedOption : MenuBarOptions  = .italian
    @State private var currentOption : MenuBarOptions  = .italian

    
    var body: some View {
        VStack {
            HStack(spacing: 16){
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .font(.title2)
                }
                Text("Miami - South Beach")
                    .font(.title3)
                    .fontWeight(.semibold)
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                }

            }
            .padding(.horizontal)
            .foregroundColor(.black)
            
            //Menu Options
            MenuOptionsList(selectedOption: $selectedOption, currentOption: $currentOption)
                .padding([.top,.horizontal])
                .overlay(
                    Divider()
                        .padding(.horizontal, -16), alignment: .bottom
                )
            
            ScrollViewReader{ proxy in
                ScrollView(.vertical,showsIndicators: false){
                    VStack{
                        ForEach(MenuBarOptions.allCases, id: \.self){ option in
                            MenuItemSection(option: option, currentOption: $currentOption)
                        }
                    }
                    .onChange(of: selectedOption, perform: { _ in
                        withAnimation(.easeInOut) {
                            proxy.scrollTo(selectedOption, anchor: .topTrailing)
                        }
                    })
                    .padding(.horizontal)
                    
                }
                .coordinateSpace(name: "scroll")
            }
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
