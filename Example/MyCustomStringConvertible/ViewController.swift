//
//  ViewController.swift
//  MyCustomStringConvertible
//
//  Created by Darkkrye on 06/02/2019.
//  Copyright (c) 2019 Darkkrye. All rights reserved.
//

import UIKit
import MyCustomStringConvertible

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let restaurant = Restaurant(id: "1234", name: "Five Guys", pricing: "€€", region: 3, location: ["1.1234567890", "1.1234567890"])
        
        print(restaurant.myDescription)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

