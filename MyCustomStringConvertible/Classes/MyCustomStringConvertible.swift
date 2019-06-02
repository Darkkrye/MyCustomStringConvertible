//
//  MyCustomStringConvertible.swift
//  MyCustomStringConvertible
//
//  Created by Pierre on 02/06/2019.
//

import Foundation

public protocol MyCustomStringConvertible {
    var description: String { get }
}

extension MyCustomStringConvertible {
    public var myDescription : String {
        var description: String = "==============================\n"
        let className = type(of: self)
        
        description += "**** \(className) ****\n"
        
        // Print each properties of class
        let selfMirror = Mirror(reflecting: self)
        for child in selfMirror.children {
            if let propertyName = child.label {
                description += "- \(propertyName): \(child.value)\n"
            }
        }
        
        // Print properties of top class
        if let parent = selfMirror.superclassMirror {
            let parentName = parent.description.replacingOccurrences(of: "Mirror for ", with: "")
            
            if !parentName.contains("NSObject") && !parentName.starts(with: "NS") && !parentName.starts(with: "UI") {
                description += "\n----- Superclass - \(parentName) -----\n"
                
                for parentChild in parent.children {
                    if let propertyName = parentChild.label {
                        description += "- \(propertyName): \(parentChild.value)\n"
                    }
                }
            }
        }
        
        
        description += "=============================="
        
        return description
    }
}
