//
//  ViewController.swift
//  SecondIosApp
//
//  Created by Sue Ceklosky on 10/22/19.
//  Copyright © 2019 susie. All rights reserved.
//

import UIKit

// equivalent of the MainActivity Java class in Android
class ViewController: UIViewController {

    // Gives ViewController access to the ImageView
    @IBOutlet weak var monsterImageView: UIImageView!
    
    // create an array of Strings that contains the
    // names of the different monsters
    var monsters = ["Astro", "Fluffy", "Munchie", "Squido"]
    
    // IBOutlets are created as Optionals
    // This means that they may contain a value or
    // they may be nil (null)
    @IBOutlet weak var amountTextField: UITextField!
    
    @IBOutlet weak var tipPercentTextField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    // equivalent of the onCreate method in Java Android classes
    // called when the scene that it controls is
    // accessed
    // initialization work is done in this method
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // creating an instance of a Joe
        let joke = Jokes()
        
        // iterating through the jokes array
        for joke in joke.jokes {
            // printing out the jokes to the debu areas
            print(joke)
        }
        
    }

    // Give ViewController ability to respond to the
    // selection of segments in the Segmented Control
    @IBAction func changeMonster(_ sender: UISegmentedControl) {
        
        // change the image in the ImageView based on
        // the segment selected
        
        // get the index of the selected segment (0, 1, 2, 3)
        let index = sender.selectedSegmentIndex
        
        // set the image of the ImageView to a new UIImage
        // the new UIImage is the element in the mosters
        // array that matches the index
        monsterImageView.image = UIImage(named: monsters[index])
    }
    
    // Give ViewController the ability to respond to
    // the Button being pushed
    @IBAction func calculateTip(_ sender: UIButton) {
        
        var dTip = 0.0
        var dAmount = 0.0
        var dPercent = 0.0
        
        // get the values in the TextFields, if a value
        // exists and assign the values to constants
        // the TextFields are Optionals, so they could
        // contain a value and they could also be nil
        if let amount = amountTextField.text, let percent = tipPercentTextField.text {
            
            // trim whitespace that may exist at the beginning
            // or the ending of the constants
            let trimmedAmount = amount.trimmingCharacters(in: .whitespaces)
            let trimmedPercent = percent.trimmingCharacters(in: .whitespaces)
            
            // check to make sure the trimmed constants
            // aren't empty
            if (!trimmedAmount.isEmpty && !trimmedPercent.isEmpty){
                
                // Convert trimmed constants to Doubles
                dAmount = Double(trimmedAmount)!
                dPercent = Double(trimmedPercent)!
                
                // Calculate the tip
                dTip = dAmount * dPercent
            }
        }
        
        // convert caculated tip to a String
        // displayed it in the Label
        tipLabel.text = "Tip is $\(String(dTip))"
    }
}

