//
//  WhackSlot.swift
//  Project14
//
//  Created by Jim Veneskey on 12/19/15.
//  Copyright © 2015 Jim Veneskey. All rights reserved.
//

import SpriteKit

// final class ?
class WhackSlot: SKNode {
    
    var charNode: SKSpriteNode!
    
    func configureAtPosition(pos: CGPoint) {
        position = pos
        let sprite = SKSpriteNode(imageNamed: "whackHole")
        addChild(sprite)
        
        
        let cropNode = SKCropNode()
        cropNode.position = CGPoint(x: 0, y: 15)
        cropNode.zPosition = 1
        cropNode.maskNode = SKSpriteNode(imageNamed: "whackMask")
        //cropNode.maskNode = nil
        
        charNode = SKSpriteNode(imageNamed: "penguinGood")
        charNode.position = CGPoint(x: 0, y: -90)
        charNode.name = "character"
        cropNode.addChild(charNode)
        
        addChild(cropNode)
        
    }
    
    
    
}
