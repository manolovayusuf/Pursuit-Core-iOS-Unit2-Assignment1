//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

var emptySpace = "_"
var x = "x"
var o = "o"
struct exesAndOhs {
    var exes: String
    var ohs: String
}
class TicTacToeBrain {
    var userOne = false
    var userTwo = false
    var gameArray = [[emptySpace, emptySpace,emptySpace], [emptySpace, emptySpace, emptySpace], [emptySpace, emptySpace,emptySpace]]
    var playersTurnCounter = 0
    var userOneWins = false
    var userTwoWins = false
    func usersMove() {
        playersTurnCounter += 1
        if playersTurnCounter % 2 == 1 {
            userOne = true
            userTwo = false
        } else {
            userTwo = true
            userOne = false
        }
    }
    
    func winningResult() {
        for row in gameArray { //horizontal
            if row == [x, x, x] {
                userTwoWins = true
                break
            } else if row == [o, o, o] {
                userOneWins = true
                break
            }
        }
        for indexOfColum in 0..<gameArray[0].count { //vertical
            var myColum = [String]()
            for indexOfRow in 0..<gameArray.count {
                myColum.append(gameArray[indexOfRow][indexOfColum])
                if myColum == [o, o, o] {
                    userOneWins = true
                    break
                } else if myColum == [x, x, x] {
                    userTwoWins = true
                    break
                }
            }
        }
        var myDiagonal = [String]()
        for indexOfDiagonal in 0..<gameArray.count { //diagonal1
            myDiagonal.append(gameArray[indexOfDiagonal][indexOfDiagonal])
            if myDiagonal == [o, o, o] {
                userOneWins = true
                break
            } else if myDiagonal == [x, x, x] {
                userTwoWins = true
                break
            }
        }
        var myDiagonalTwo = [String]()
        for indexOfDiagonalTwo in 0..<gameArray.count { //diagonal2
            myDiagonalTwo.append(gameArray[indexOfDiagonalTwo][gameArray.count - 1 - indexOfDiagonalTwo])
            if myDiagonalTwo == [o, o, o] {
                userOneWins = true
                break
            } else if myDiagonalTwo == [x, x, x] {
                userTwoWins = true
                break
            }
        }
     }
}
