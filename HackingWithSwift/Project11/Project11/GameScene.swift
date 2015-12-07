//
//  GameScene.swift
//  Project11
//
//  Created by Jim Veneskey on 12/6/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let background = SKSpriteNode(imageNamed: "background.jpg")
        background.position = CGPoint(x: 512, y: 384)
        background.blendMode = .Replace
        background.zPosition = -1
        addChild(background)
        // set the frame of the screen as the "ground" to keep objects from passing through
        physicsBody = SKPhysicsBody(edgeLoopFromRect: frame)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        if let touch = touches.first {
            let location = touch.locationInNode(self)
            let box = SKSpriteNode(color: UIColor.redColor(), size: CGSize(width: 64, height: 64))
            // Give the new boxes physics property - so they respond to gravity
            box.physicsBody = SKPhysicsBody(rectangleOfSize: CGSize(width: 64, height: 64))
            box.position = location
            addChild(box)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
