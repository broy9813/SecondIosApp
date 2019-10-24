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
    
    // IBOutlets are created as Optionals
    // This means that they may contain a value or they maybe null
    @IBOutlet weak var amountTextField: UITextField!
    
    @IBOutlet weak var tipPercentTextField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
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
    
    
    // Give ViewController the ability to respond to the button being pushed
    @IBAction func calculateTip(_ sender: UIButton) {
        
        var dTip = 0.0
        var dAmount = 0.0
        var dPercent = 0.0
        
        // get the values in the TextFields, if a value exists and assign the values to constants
        // the TextFields are Optionals, so they could contain a value and they could also be nil
        if let amount = amountTextField.text, let percent =
            tipPercentTextField.text {
            
            // trim whitespace that may exist at the begining or the ending of the constants
            let trimmedAmount = amount.trimmingCharacters(in: .whitespaces)
            let trimmedPercent = percent.trimmingCharacters(in: .whitespaces)
            
            // check to make sure the trimmed constants aren't empty
            if (!trimmedAmount.isEmpty && !trimmedPercent.isEmpty){
                
                // Convert trimmed constants to Doubles
                dAmount = Double(trimmedAmount)!
                dPercent = Double(trimmedPercent)!
                
                // calculate the tip
                dTip = dAmount * dPercent
            }
        }
        
        // convert calculated tip to a String
        // displayed it in the Label
        tipLabel.text = "Tip is $\(String(dTip))"
    }
}

