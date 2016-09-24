//
//  ViewController.swift
//  swift-viewLifeCycle-lab-ios-vFJ
//
//  Created by Felicity Johnson on 9/24/16.
//  Copyright © 2016 FJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topLeft: UIView!
    
    @IBOutlet weak var middleLeft: UIView!
    
    @IBOutlet weak var bottomLeft: UIView!
    
    @IBOutlet weak var middle: UIView!
    
    @IBOutlet weak var topRight: UIView!
    
    @IBOutlet weak var middleRight: UIView!
    
    @IBOutlet weak var bottomRight: UIView!
    
    @IBOutlet weak var roll1: UILabel!
    @IBOutlet weak var roll2: UILabel!
    @IBOutlet weak var roll3: UILabel!
    @IBOutlet weak var roll4: UILabel!
    @IBOutlet weak var roll5: UILabel!
    @IBOutlet weak var roll6: UILabel!
    
    var diceScore: Int = 0
    
    @IBAction func rollDice(roll: Int) {
        
        diceScore = randomDiceRoll()

        if roll1.hidden {
            
            roll1.text = String(diceScore)
            roll1.hidden = false
            dieButtonTapped(diceScore)
     
            
        } else if roll2.hidden {
            topLeft.hidden = true
            middleLeft.hidden = true
            bottomLeft.hidden = true
            middle.hidden = true
            topRight.hidden = true
            middleRight.hidden = true
            bottomRight.hidden = true
            roll2.text = String(diceScore)
            roll2.hidden = false
           dieButtonTapped(diceScore)
            
        } else if roll3.hidden {
            topLeft.hidden = true
            middleLeft.hidden = true
            bottomLeft.hidden = true
            middle.hidden = true
            topRight.hidden = true
            middleRight.hidden = true
            bottomRight.hidden = true
            roll3.text = String(diceScore)
            roll3.hidden = false
           dieButtonTapped(diceScore)
            
        } else if roll4.hidden {
            topLeft.hidden = true
            middleLeft.hidden = true
            bottomLeft.hidden = true
            middle.hidden = true
            topRight.hidden = true
            middleRight.hidden = true
            bottomRight.hidden = true
            roll4.text = String(diceScore)
            roll4.hidden = false
            dieButtonTapped(diceScore)
            
        } else if roll5.hidden {
            roll5.text = String(diceScore)
            roll5.hidden = false
            dieButtonTapped(diceScore)
            
        } else if roll6.hidden {
            topLeft.hidden = true
            middleLeft.hidden = true
            bottomLeft.hidden = true
            middle.hidden = true
            topRight.hidden = true
            middleRight.hidden = true
            bottomRight.hidden = true
            roll6.text = String(diceScore)
            roll6.hidden = false
            dieButtonTapped(diceScore)
        }
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        topLeft.hidden = true
        middleLeft.hidden = true
        bottomLeft.hidden = true
        middle.hidden = true
        topRight.hidden = true
        middleRight.hidden = true
        bottomRight.hidden = true
        roll1.hidden = true
        roll2.hidden = true
        roll3.hidden = true
        roll4.hidden = true
        roll5.hidden = true
        roll6.hidden = true
        
        
    }

    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        switch diceScore {
            
        case 1:
            middle.hidden = false
            
        case 2:
            middleLeft.hidden = false
            middleRight.hidden = false
            
        case 3:
            topRight.hidden = false
            middle.hidden = false
            bottomLeft.hidden = false
            
        case 4:
            topRight.hidden = false
            bottomLeft.hidden = false
            topLeft.hidden = false
            bottomRight.hidden = false
            
        case 5:
            topRight.hidden = false
            bottomLeft.hidden = false
            topLeft.hidden = false
            bottomRight.hidden = false
            middle.hidden = false
            
        case 6:
            topRight.hidden = false
            bottomLeft.hidden = false
            topLeft.hidden = false
            bottomRight.hidden = false
            middleLeft.hidden = false
            middleRight.hidden = false
            
        case 7:
            topRight.hidden = false
            bottomLeft.hidden = false
            topLeft.hidden = false
            bottomRight.hidden = false
            middleLeft.hidden = false
            middleRight.hidden = false
            middle.hidden = false
            
        default:
            topLeft.hidden = true
            middleLeft.hidden = true
            bottomLeft.hidden = true
            middle.hidden = true
            topRight.hidden = true
            middleRight.hidden = true
            bottomRight.hidden = true
            
        }

        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }


}

