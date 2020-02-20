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
//Lists through the array of foods
    @IBAction func buttonPressed(_ sender: Any)
    //specifies which food to show
    {
        self.secondLabel.text = favoriteFoodArray[currentIndex]
        //moves up the array if the current number is less than total food items in the array
        if self.currentIndex < self.favoriteFoodArray.count
       
        {
            //specifies how far to move up the array
            currentIndex+=1
            //changes button label upon press
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
        }
        
        else {
            //Disables button at the end of the array
            (sender as! UIButton).isEnabled = false
            
            
        }
    }
  
}

