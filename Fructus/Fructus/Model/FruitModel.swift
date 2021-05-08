//
//  FruitModel.swift
//  Fructus
//
//  Created by Alireza TK on 5/6/21.
//

import SwiftUI

// MARK:  - FRUIT DATA MODEL

struct Fruit:Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
