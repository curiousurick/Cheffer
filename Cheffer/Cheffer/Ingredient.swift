//
//  Ingredient.swift
//  Cheffer
//
//  Created by George Urick on 1/24/15.
//  Copyright (c) 2015 ChefferCo. All rights reserved.
//

import Foundation

class Ingredient {
    var food: String
    var amount: Int
    var unit: String
    
    
    init(food: String, amount: Int, unit: String) {
        self.food = food
        self.amount = amount
        self.unit = unit
    }
}
