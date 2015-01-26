//
//  File.swift
//  Cheffer
//
//  Created by George Urick on 1/24/15.
//  Copyright (c) 2015 ChefferCo. All rights reserved.
//

import Foundation

class Chef {
    
    var firstName:String
    var lastName: String
    
    
    var firstLine: String
    var secondLine: String
    var city: String
    var state: String
    var zip: Int
    var phoneNumber: Int
    
    
    
    init(firstName: String, lastName: String, firstLine: String, secondLine: String, city: String, state: String, zip: Int, phoneNumber: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.firstLine = firstLine
        self.secondLine = secondLine
        self.city = city
        self.state = state
        self.zip = zip
        self.phoneNumber = phoneNumber
        
    }
    
}
