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
    
}

