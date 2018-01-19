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
    @IBOutlet weak var messageToUser: UILabel!
    
    // MARK: Properties (variables)
    var game = GuessingGame()
    
    // MARK: Overridden Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("The number to guess is:")
        print(game.numberToGuess)
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
        
        messageToUser.text = game.checkGuessGiveFeedback(guess: integerGiven)
        
    }
    
    
    //MARK: Custom function(s)
    
}

