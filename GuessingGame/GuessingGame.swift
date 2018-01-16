//
//  GuessingGame.swift
//  GuessingGame
//
//  Created by Rubin, Zach on 2018-01-16.
//  Copyright © 2018 Rubin, Zach. All rights reserved.
//

import Foundation

struct GuessingGame {
    
    //Properties
    var numberToGuess : Int
    
    
    //Initializer
    init() {
        //Generate the random number
        numberToGuess = Int(arc4random_uniform(501)) //Get number between 0 & 500
    }
}
