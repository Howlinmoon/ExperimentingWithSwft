//
//  Person.swift
//  Project10
//
//  Created by jim Veneskey on 12/4/15.
//  Copyright © 2015 Jim Veneskey. All rights reserved.
//

import UIKit

class Person: NSObject, NSCoding {

    var name: String
    var image: String
    
    // The require initializer
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }

    
    // Needed to implement NSCoding
    required init(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObjectForKey("name") as! String
        image = aDecoder.decodeObjectForKey("image") as! String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(name, forKey: "name")
        acoder.encodeObject(image, forKey: "image")
    }
    
}
