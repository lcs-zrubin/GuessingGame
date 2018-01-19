//
//  GuessingGame.swift
//  GuessingGame
//
//  Created by Rubin, Zach on 2018-01-16.
//  Copyright © 2018 Rubin, Zach. All rights reserved.
//

import Foundation

struct GuessingGame {
    
    //MARK: Properties
    var numberToGuess : Int
    
    
    //MARK: Initializer
    init() {
        //Generate the random number
        numberToGuess = Int(arc4random_uniform(501)) //Get number between 0 & 500
    }
    
    //MARK: Functions
    func checkGuessGiveFeedback(guess: Int) -> String {
        if guess == numberToGuess {
            return("You guessed correctly!")
        } else if guess < numberToGuess {
            return("Try guessing higher!")
        } else {
            return("Try guessing lower!")
        }
    }
}
