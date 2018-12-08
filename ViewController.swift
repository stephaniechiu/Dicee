//
//  ViewController.swift
//  Dicee
//
//  Created by Stephanie on 12/1/18.
//  Copyright © 2018 Stephanie Chiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateDiceImage()
        //when the app is opened, it will have random dice faces rather than two 1's
    }

    @IBAction func rollButton(_ sender: UIButton) {
        updateDiceImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
    
    func updateDiceImage() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        //UIImage is a data type. named is a special property that will call an image from the assets folder
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
}

