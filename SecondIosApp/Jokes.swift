//
//  Jokes.swift
//  SecondIosApp
//
//  Created by Sue Ceklosky on 10/22/19.
//  Copyright © 2019 susie. All rights reserved.
//

import Foundation

class Jokes {
    
    // created a property that is an array of Strings
    var jokes = [String] ()
    
    // created an init method
    // it's the equivalent of a Java constructor
    init() {
        // includes two Strings in the jokes array
        jokes.append("What do you call a bear with no teeth?  A gummy bear!")
        jokes.append("If con is the opposite of progress, it must mean Congress is the opposite of Progress!")
    }
}
