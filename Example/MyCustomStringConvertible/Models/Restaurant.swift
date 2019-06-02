//
//  Restaurant.swift
//  MyCustomStringConvertible_Example
//
//  Created by Pierre on 02/06/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

class Restaurant: BaseItem {
    var pricing: String
    var region: Int
    var location: [String]
    
    init(id: String, name: String, pricing: String, region: Int, location: [String]) {
        self.pricing = pricing
        self.region = region
        self.location = location
        
        super.init(id: id, name: name, type: "Restaurant")
    }
}
