//
//  MenuBarOptions.swift
//  SwiftUI-UberEatsMenu
//
//  Created by Yavuz Güner on 2.01.2023.
//

import Foundation

enum MenuBarOptions:Int,CaseIterable{
    case japanese
    case american
    case italian
    case promotions
    case fancy
    
    var title:String{
        switch self{
        case .japanese : return "Japanese"
        case .american : return "American"
        case .italian : return "Italian"
        case .promotions : return "Promotions"
        case .fancy : return "Fancy"
        }
    }
    
    var foodItems : [FoodItem] {
        switch self {
        case .japanese:
            return japanaseFood
        case .american:
            return americanFood
        case .italian:
            return italianFood
        case .promotions:
            return italianFood + japanaseFood
        case .fancy:
            return americanFood
        }
    }
    
}
