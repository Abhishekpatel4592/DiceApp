//
//  ViewController.swift
//  Dicee
//
//  Created by Abhishek Patel on 2018-12-04.
//  Copyright © 2018 Abhishek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randonDice1 : Int = 0
    var randonDice2 : Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
        
    }

    @IBAction func rollButtinPressed(_ sender: UIButton) {
       
        updateDiceImages()
       
    }
    
    func updateDiceImages(){
        
        randonDice1 = Int(arc4random_uniform(6))
        randonDice2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randonDice1])
        diceImageView2.image = UIImage(named: diceArray[randonDice2])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

