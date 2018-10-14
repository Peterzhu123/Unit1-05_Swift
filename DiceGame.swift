// Created by: Peter Zhu
// Created on: Oct 2018
// This program is Dice Game

import Foundation

var tries = 1
print("This is a game about guessing numbers. ")

let random = Int(arc4random_uniform(6)+1)
print("Enter a random number between 1 and 6 ")

repeat{
    let response = Int(readLine()!)
    if random == response! {
        print("You got it !")
        print("You took \(tries) tries. ")
        break
    }
    else if(response! > 6){
        print("Invalid input! You can only input numbers between 1-6 ")
    }
    else{
        print("Keep Trying !")
        tries += 1
    }
}while true
