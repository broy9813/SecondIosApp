//
//  ViewController.swift
//  SecondIosApp
//
//  Created by Roy, Bishakha on 10/22/19.
//  Copyright © 2019 Roy, Bishakha. All rights reserved.
//

import UIKit

// equivalent of the MainAcitivity Java class in Android
class ViewController: UIViewController {

    // equivalent of the onCreate method in Java Android Classes
    // called when the scene that it controls is
    // accessed
    //initialization is done in this method
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // creating an instance of a Joe
        let jokes = Jokes ()
        
        //iterating through the jokes array
        for jokes in jokes.jokes {
            //printing out the joks to the debu areas
            print(joke)
        }

    }


}

