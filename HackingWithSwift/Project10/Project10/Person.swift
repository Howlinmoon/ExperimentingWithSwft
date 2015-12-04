//
//  Person.swift
//  Project10
//
//  Created by jim Veneskey on 12/4/15.
//  Copyright © 2015 Jim Veneskey. All rights reserved.
//

import UIKit

class Person: NSObject {

    var name: String
    var image: String
    
    // The require initializer
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }

}
