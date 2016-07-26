//
//  ViewController.swift
//  Multiples
//
//  Created by Grant Brack-Bos on 26/07/2016.
//  Copyright © 2016 Grant Brack-Bos. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    //Variables
    var baseNumber = 0
    var addition = 0
    var addedNumber = 0
    var startAdds = 0
    var maxAdds = 9
    
    
    //Outlets
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var numberField: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    
    //Functions
    
    @IBAction func onPlayButtonPressed(sender: UIButton!) {
        if numberField.text != nil && numberField.text != "" {
            
            playButton.hidden = true
            titleImage.hidden = true
            numberField.hidden = true
            
            addButton.hidden = false
            answerLabel.hidden = false
            
            baseNumber = Int(numberField.text!)!
            addition = Int(numberField.text!)!
            updateLabel()
        }
    }
    
    @IBAction func onAddButtonPressed(sender: UIButton!) {
        startAdds += 1
        updateLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    func updateLabel() {
        addedNumber = (baseNumber + addition)
        answerLabel.text = "\(addition) + \(baseNumber) = \(addedNumber)"
        addition = (baseNumber + addition)
    }
    
    func isGameOver() -> Bool {
        if startAdds >= maxAdds {
            return true
        } else {
            return false
        }
    }
    
    func restartGame() {
        baseNumber = 0
        addition = 0
        startAdds = 0
        numberField.text = ""
        
        addButton.hidden = true
        answerLabel.hidden = true
        
        playButton.hidden = false
        titleImage.hidden = false
        numberField.hidden = false
    }
    
}

