//
//  FoodItem.swift
//  SwiftUI-UberEatsMenu
//
//  Created by Yavuz Güner on 2.01.2023.
//

import Foundation

struct FoodItem:Identifiable{
    var id = UUID().uuidString
    var title : String
    var description : String
    var price : String
    var imageName:String
}

var japanaseFood : [FoodItem] = [.init(title: "Sushi", description: "Amazing sushi incredibly great food", price: "$24", imageName: "sushi"),
                             .init(title: "Ramen Noodles", description: "Amazing noodle incredibly great food", price: "$30", imageName: "ramen-noodles"),
                             .init(title: "Poke Bowl", description: "Amazing bowl incredibly great food", price: "$14", imageName: "poke-bowl")]

var americanFood : [FoodItem] = [.init(title: "Steak", description: "Amazing steak incredibly great food", price: "$24", imageName: "steak"),
                             .init(title: "Cheeseburger", description: "Amazing cheesesteak incredibly great food", price: "$30", imageName: "cheeseburger"),
                             .init(title: "Philly Cheese Steak", description: "Amazing steak incredibly great food", price: "$14", imageName: "philly-cheesesteak")]

var italianFood : [FoodItem] = [.init(title: "Pizza", description: "Amazing pizza incredibly great food", price: "$24", imageName: "pizza"),
                             .init(title: "Pasta", description: "Amazing pasta incredibly great food", price: "$30", imageName: "pasta"),
                             .init(title: "Tiramisu", description: "Amazing tiramisu incredibly great food", price: "$14", imageName: "tiramisu")]
