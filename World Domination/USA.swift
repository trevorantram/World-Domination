//
//  scene3.swift
//  World Domination
//
//  Created by Trevor Antram on 3/17/16.
//  Copyright © 2016 Trevor Antram. All rights reserved.
//

import SpriteKit
import UIKit


class scene3: SKScene{
    
    let background = SKSpriteNode(imageNamed: "white.png")
    let attack = SKSpriteNode(imageNamed: "atack.png")
    
    
    
    
    override func didMoveToView(view: SKView) {
        
        background.size = CGSize(width: 1000000, height: 1000000)
        background.position = CGPointMake(self.frame.midX, self.frame.midY)
        attack.size = CGSize(width: 250, height: 250)
        attack.position = CGPointMake(500, self.frame.minY)
        
        self.addChild(background)
        
        
        
        
        
        
        
    }
    
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        for touch in touches{
            let touchLocation = touch.locationInNode(self)
            if self.nodeAtPoint(touchLocation) == attack{
            
                
                
                
            }
            
            
        }
        
    }
}
