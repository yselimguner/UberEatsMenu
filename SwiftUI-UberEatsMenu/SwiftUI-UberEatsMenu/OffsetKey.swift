//
//  OffsetKey.swift
//  SwiftUI-UberEatsMenu
//
//  Created by Yavuz Güner on 2.01.2023.
//

import SwiftUI

struct OffsetKey:PreferenceKey{
    static var defaultValue: CGRect = .zero
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
        
    }
}
