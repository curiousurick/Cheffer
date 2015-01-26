//
//  File.swift
//  Cheffer
//
//  Created by George Urick on 1/24/15.
//  Copyright (c) 2015 ChefferCo. All rights reserved.
//

import Foundation

class Meal {
    var cuisine: String
    var name: String
    var chef: Chef
    var pickupTime: NSDate
    var orderByTime: NSDate
    var readyTime: NSDate
    //var recipe: Recipe
    var price: NSNumber
    var availableMeals: Int
    
    
    
    
    init(cuisine: String, name: String, chef: Chef, readyTime: NSDate, pickupTime: NSDate, orderByTime: NSDate, price: NSNumber, availableMeals: Int) {
        self.cuisine = cuisine
        self.name = name
        self.chef = chef
        self.pickupTime = pickupTime
        self.orderByTime = orderByTime
        self.readyTime = readyTime
        self.price = price
        self.availableMeals = availableMeals
        
    }
}