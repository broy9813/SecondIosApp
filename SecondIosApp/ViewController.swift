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

    // Gives ViewController access to the IMageView
    @IBOutlet weak var monsterImageView: UIImageView!
    
    
    // create an array of Strings that contains the
    // name of the different things
    var monsters = ["Astro", "Fluffy", "Munchie", "Squido"]
    // equivalent of the onCreate method in Java Android Classes
    // called when the scene that it controls is
    // accessed
    //initialization is done in this method
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // creating an instance of a Joe
        let jokes = Jokes ()
        
        //iterating through the jokes array
        for joke in jokes.jokes {
            //printing out the joks to the debu areas
            print(joke)
        }

    }

    // Give ViewController ability to respond to the
    // Selection of segments in the Segmentd Control
    @IBAction func changeMonster(_ sender: UISegmentedControl) {
        
        // change theimage in the ImageView based on
        // the segment selected
        
        // get the index of the selected segment (0, 1, 2, 3)
        let index = sender.selectedSegmentIndex
        
        // set the image of the ImageView to a new UIImage
        // the new UIImage is the element in the monsters
        // array that matches the index
        monsterImageView.image = UIImage(named: monsters[index])
    }
    
}

