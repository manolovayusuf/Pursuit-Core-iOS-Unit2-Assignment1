//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet var buttons: [GameButton]!
    
    let myBrain = TicTacToeBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pressedButton(_ sender: GameButton) {
        myBrain.usersMove()
if myBrain.userOne {
    myBrain.gameArray[sender.row][sender.col] = o
    sender.setBackgroundImage(UIImage.init(named: "otictactoe"), for: .normal)
    sender.isEnabled = false
    myBrain.winningResult()
    if myBrain.userOneWins {
        winnerLabel.text = "Ya won player one"
    }
} else if myBrain.userTwo {
    myBrain.gameArray[sender.row][sender.col] = x
    sender.setBackgroundImage(UIImage.init(named: "Xtictactoe"), for: .normal)
    sender.isEnabled = false
    myBrain.winningResult()
    if myBrain.userTwoWins {
        winnerLabel.text = "Ya won player two"
    }
        }
    }
    @IBAction func newGame(_ sender: UIButton) {
        
        //winnerLabel
        buttons.forEach { $0.setBackgroundImage(nil, for: .normal )}
        buttons.forEach { $0.isEnabled = true}
    }
}

