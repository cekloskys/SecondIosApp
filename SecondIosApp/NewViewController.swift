//
//  NewViewController.swift
//  SecondIosApp
//
//  Created by Sue Ceklosky on 10/29/19.
//  Copyright © 2019 susie. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    // Gives NewViewController access to the Label
    @IBOutlet weak var tipLabel: UILabel!
    
    // Create a String that will store the calculated
    // tip sent from the original ViewController
    var tipToShow = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // display the calculated tip sent from
        // the original ViewController in the Label
        tipLabel.text = tipToShow
    }
    
    @IBAction func goToTableView(_ sender: UIButton) {
        // segue to the New View Controller
        // this method requires the prepare method be overridden
        performSegue(withIdentifier: "GoToTableView", sender: nil)
    }
    
    // This method creates an instance of the View Controller that's being
    // segued to
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // if we're segueing to the View Controller that has the identifier
        // GoToTableView
        if segue.identifier == "GoToTableView" {
            
            // create an instance of that View Controller
            // check if the segue destination is castable to a NewTableViewController
            // and cast it if it is, else return nil
            _ = segue.destination as? NewTableViewController
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
