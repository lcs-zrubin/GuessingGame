//
//  ViewController.swift
//  GuessingGame
//
//  Created by Rubin, Zach on 2018-01-13.
//  Copyright © 2018 Rubin, Zach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var numberGuessed: UITextField!
    
    // MARK: Properties (variables)
    
    // MARK: Overridden Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    @IBAction func numberGuessed(_ sender: Any) {
        
        //Print the number that was guessed
        print(numberGuessed.text)
        
        // Use a guard statement to bind a non-optional variable
        guard let inputGiven = numberGuessed.text else {
            //If the input was nil, stop and return (exit) the function
            return
        }
        
        //Use a guard statement to attempt to create an integer
        guard let integerGiven = Int(inputGiven) else {
            //If the input was text (e.g. "Five" we cant make it an integer so stop and return (exit) the function
            return
        }
        
    }
    
    
    //MARK: Custom function(s)
    
}

