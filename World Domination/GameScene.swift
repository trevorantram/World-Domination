//
//  GameScene.swift
//  World Domination
//
//  Created by Trevor Antram on 3/17/16.
//  Copyright (c) 2016 Trevor Antram. All rights reserved.
//

import SpriteKit
import AVFoundation

class GameScene: SKScene {
    
    // This is the Scene with the play button and the credits
    
    
    let playButton = SKSpriteNode(imageNamed: "play.png")
    let backGround = SKSpriteNode(imageNamed: "white.jpg")
    let nameLabel = SKLabelNode(text: "World War X")
    let creatorLabel = SKLabelNode(text: "Coder: Trevor Antram")
    let advetiser = SKLabelNode(text: "Advertiser: Brendon Sullivan")
    let music = SKAudioNode(fileNamed: "Hitman.mp3")
    

    override func didMoveToView(view: SKView) {
        
        
        
        
        self.addChild(music)
        self.view?.showsFPS = false
        self.view?.showsNodeCount = false
        backGround.zPosition = 0
        backGround.size = CGSize(width: 1000000, height: 1000000)
        backGround.position = CGPointMake(self.frame.midX, self.frame.midY)
        playButton.position = CGPointMake(self.frame.midX, self.frame.midY)
        playButton.zPosition = 1
        nameLabel.fontName = "ChalkDuster"
        nameLabel.fontColor = UIColor.blackColor()
        nameLabel.position = CGPointMake(playButton.position.x, playButton.position.y + 150)
        creatorLabel.fontColor = UIColor.blackColor()
        advetiser.position = CGPointMake(150,130)
        nameLabel.zPosition = 1
        creatorLabel.position = CGPointMake(150, 150)
        creatorLabel.zPosition = 1
        advetiser.zPosition = 1
        creatorLabel.fontSize = 20
        advetiser.fontSize = 20
        
        
        
        advetiser.fontColor = UIColor.blackColor()
        
        self.addChild(backGround)
        self.addChild(playButton)
        self.addChild(advetiser)
        self.addChild(creatorLabel)
        self.addChild(nameLabel)
      
   
        
    
        
        
        
    
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches{
            let touchLocation = touch.locationInNode(self)

            if self.nodeAtPoint(touchLocation) ==  self.playButton{
                
                
                var newScene = scene2(size: self.size)
                let skView = self.view! as SKView
                skView.ignoresSiblingOrder = true
                skView.showsFPS = false
                skView.showsNodeCount = false
                skView.presentScene(newScene)
                
                
                
                
            }
        }
        
        
      
    
    }
    
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
 