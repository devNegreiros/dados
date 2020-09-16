//
//  DiceModel.swift
//  Dados
//
//  Created by Daniel Negreiros on 16/09/20.
//  Copyright © 2020 Daniel Negreiros. All rights reserved.
//

import UIKit

class DiceModel{
    
    init() {
        updateDiceImage()
    }
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    var rightImage = #imageLiteral(resourceName: "dice1")
    var leftImage = #imageLiteral(resourceName: "dice1")
    
    func updateDiceImage()  {
        setIndexValue()
        rightImage = defineDiceImage(diceNumber: randomDiceIndex1)
        leftImage = defineDiceImage(diceNumber: randomDiceIndex2)
    }
    
    private func setIndexValue(){
        randomDiceIndex1 = generateRandomInt()
        randomDiceIndex2 = generateRandomInt()
    }
    
    private func generateRandomInt() -> Int{
        return Int.random(in: 1 ... 6)
    }
    
    private func defineDiceImage(diceNumber: Int) -> UIImage{
        if let diceImage = UIImage(named: "dice\(diceNumber)"){
            return diceImage
        }
        else {
            return #imageLiteral(resourceName: "dice1")
        }
    }
}


/*
 
 
 
 var randomDiceIndex1: Int = 0
 var randomDiceIndex2: Int = 0
 @IBOutlet weak var diceImageView1: UIImageView!
 
 @IBOutlet weak var diceImageView2: UIImageView!
 
 
 
 override func viewDidLoad() {
 super.viewDidLoad()
 setDiceImage()
 }
 
 @IBAction func rollButtonPressed(_ sender: UIButton) {
 setDiceImage()
 }
 
 
 
 private func setDiceImage(){
 setIndexValue()
 diceImageView1.image = defineDiceImage(diceNumber: randomDiceIndex1)
 diceImageView2.image = defineDiceImage(diceNumber: randomDiceIndex2)
 
 }
 
 private func defineDiceImage(diceNumber: Int) -> UIImage{
 if let diceImage = UIImage(named: "dice\(diceNumber)"){
 return diceImage
 }
 else {
 return #imageLiteral(resourceName: "dice1")
 }
 }
 
 private func setIndexValue(){
 randomDiceIndex1 = generateRandomInt()
 randomDiceIndex2 = generateRandomInt()
 }
 
 private func generateRandomInt() -> Int{
 return Int.random(in: 1 ... 6)
 }
 */
