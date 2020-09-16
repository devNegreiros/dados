//
//  RollDicesViewController.swift
//  Dados
//
//  Created by Daniel Negreiros on 16/09/20.
//  Copyright © 2020 Daniel Negreiros. All rights reserved.
//

import UIKit

class RollDicesViewController: UIViewController {

    let diceModel = DiceModel()
    
    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()    }
    

    @IBAction func rollDicesDidPressed(_ sender: Any) {
        diceModel.updateDiceImage()
        updateUI()
    }
    
    func updateUI(){
        leftDice.image = diceModel.leftImage
        rightDice.image = diceModel.rightImage
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        diceModel.updateDiceImage()
        updateUI()
    }
}
