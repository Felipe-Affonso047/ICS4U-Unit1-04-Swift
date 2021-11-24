/*
* The "Guessing Game" program.
*
* @author  Felipe Garcia Affonso
* @version 1.0
* @since   2021-11-23
*/

// Swift "Microwave" Program

import Foundation

let ONE: Int = 1
let SIX: Int = 6

let randNum: Int = Int.random(in: ONE..<SIX)

print("Try to guess a number from 1 to 6!")

var guess = true
while guess == true {
  let input = readLine()
  if let numberGuessed: Int = Int(input!) {
    if numberGuessed == randNum {
      print("\nCongratulations, you guessed right!")
      guess = false
    } else if numberGuessed > SIX || numberGuessed < 1 {
      print("\nPlease inseart an integer between 1 and 6.")
    } else if numberGuessed < randNum {
      print("A little higher.")
    } else if numberGuessed > randNum {
      print("A little lower.")
    }
  } else {
    print("\nError, please insert a number from 1 to 6")
  }
}

print("\nDone.\n")
