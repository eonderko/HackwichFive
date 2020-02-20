//
//  ViewController.swift
//  HackwichFive
//
//  Created by CM Student on 2/20/20.
//  Copyright © 2020 Eli Onderko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonLabel: UIButton!
    
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!

    var currentIndex = 0
    var favoriteFoodArray = ["Pizza", "Buffalo Wings", "Scrambled Eggs", "Fried Chicken", "McGriddle"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.firstLabel.text = "My Favorite Foods"
        
    }

    @IBAction func buttonPressed(_ sender: Any)
    
    {
        self.secondLabel.text = favoriteFoodArray[currentIndex]
        if self.currentIndex < self.favoriteFoodArray.count
        {
            currentIndex+=1
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
        }
        else {
            
            (sender as! UIButton).isEnabled = false
            
            
        }
    }
  
}

