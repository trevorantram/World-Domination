//
//  AttackOptions.swift
//  World Domination
//
//  Created by Trevor Antram on 3/17/16.
//  Copyright © 2016 Trevor Antram. All rights reserved.
//

import UIKit
import SpriteKit

var soildersVar = 50
var tanksVar = 10
var missilesVar = 5




class AttackOptions: UIViewController{
    
    var countryHealth : Int
    var countryMissiles : Int
    var countryTanks : Int
    
    
    init(CountryHealth : Int,CountryMissiles : Int,CountryTanks : Int){
      
        self.countryHealth = CountryHealth
        self.countryMissiles = CountryMissiles
        self.countryTanks = CountryTanks
        
              
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @IBAction func solders(sender: AnyObject) {
        soildersVar--
        countryHealth = countryHealth - 2
        print("Soilders: \(soildersVar)")
        print("Country Health: \(countryHealth)")
        
        
        
        
    }
    
    @IBOutlet weak var soilders: UILabel!

    @IBAction func tanks(sender: AnyObject) {
        
        tanksVar--
        print("Tanks: \(tanksVar)")
        print("Country Health: \(countryHealth)")
    }
    
    @IBOutlet weak var tanks: UILabel!
    @IBAction func missile(sender: AnyObject) {
        missilesVar--
        print("Missiles: \(missilesVar)")
        print("Country Health: \(countryHealth)")    }
    @IBOutlet weak var missile: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
}
