//
//  File.swift
//  World Domination
//
//  Created by Trevor Antram on 3/17/16.
//  Copyright © 2016 Trevor Antram. All rights reserved.
//

import SpriteKit
import AVFoundation

class scene2 : SKScene {
    
   
    let USA = SKSpriteNode(imageNamed: "america.png")
    let China = SKSpriteNode(imageNamed: "china.jpg")
    let background = SKSpriteNode(imageNamed: "white.jpg")
    let comLabel = SKLabelNode(text: "What country would you like to attack")
    
    

    
    
    
    
    
    
    
    
    override func didMoveToView(view: SKView) {
        //Scene Setup
        let Music = SKAudioNode(fileNamed: "Black Vortex.mp3")
        background.position = CGPointMake(self.frame.midX, self.frame.midY)
        background.size = CGSize(width: 1000000, height: 1000000)
        USA.position = CGPointMake(self.frame.minX + 200, self.frame.minY + 175)
        USA.zPosition = 1
        USA.size = CGSize(width: 250, height: 300)
        comLabel.fontName = "AmericanTypewriter-Bold"
        comLabel.position = CGPoint(x: self.frame.midX, y: self.frame.maxY - 100)
        comLabel.zPosition = 1
        comLabel.fontColor = UIColor.blackColor()
        China.position = CGPointMake(self.frame.midX, self.frame.midY + 150)
        China.zPosition = 3
        
        
        
        
        
        
        self.addChild(background)
        self.addChild(USA)
        self.addChild(Music)
        self.addChild(comLabel)
        self.addChild(China)
        
        
        
        
        
        
        
        
        
        
        
    }

    
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
                   //Check where the user taps
            let touchLocation = touch.locationInNode(self)
            if self.nodeAtPoint(touchLocation) == USA{
                let newScene = scene3(size: self.size)
                let skView = self.view! as SKView
                skView.ignoresSiblingOrder = true
                skView.showsFPS = false
                skView.showsNodeCount = false
                skView.presentScene(newScene)
 }
            
            if self.nodeAtPoint(touchLocation) == China{
                let newScene = scene4(size: self.size)
                let skView = self.view! as SKView
                skView.ignoresSiblingOrder = true
                skView.showsFPS = false
                skView.showsNodeCount = false
                skView.presentScene(newScene)
            }

            
        }
        
        
    }
    
    
}
