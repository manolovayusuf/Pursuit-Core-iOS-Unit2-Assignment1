//
//  GameButton.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class GameButton: UIButton { //if you want these properties do the buttons on sotryboard and connect it to that custom class
  @IBInspectable var row: Int = 0
  @IBInspectable var col: Int = 0
}
