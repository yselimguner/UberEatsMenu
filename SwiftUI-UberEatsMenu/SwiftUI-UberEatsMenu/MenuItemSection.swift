//
//  MenuItemSection.swift
//  SwiftUI-UberEatsMenu
//
//  Created by Yavuz Güner on 2.01.2023.
//

import SwiftUI

struct MenuItemSection: View {
    
    let option : MenuBarOptions
    @Binding var currentOption:MenuBarOptions
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24){
            Text(option.title)
                .font(.title.bold())
                .padding(.vertical)
            
            ForEach(option.foodItems) { food in
                HStack(spacing:16){
                    VStack(alignment: .leading, spacing: 8){
                        Text(food.title)
                            .font(.title3.bold())
                        Text(food.description)
                            .font(.caption)
                            .foregroundColor(.gray)
                        Text("Price : \(food.price)")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                    }
                    Spacer()
                    Image(food.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 96, height: 88)
                        .clipped()
                        .cornerRadius(10)
                }
                    Divider()
            }
        }
        .modifier(OffsetModifier(option: option, currentOption: $currentOption))
    }
}

struct MenuItemSection_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemSection(option: .italian, currentOption: .constant(.promotions))
    }
}
