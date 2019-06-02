//
//  BaseItem.swift
//  MyCustomStringConvertible_Example
//
//  Created by Pierre on 02/06/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import MyCustomStringConvertible

class BaseItem: NSObject, MyCustomStringConvertible {
    var id: String
    var name: String
    var type: String
    
    init(id: String, name: String, type: String) {
        self.id = id
        self.name = name
        self.type = type
    }
}
