//
//  ViewController.swift
//  Tapper
//
//  Created by mobilestudio on 3/12/16.
//  Copyright © 2016 mobilestudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //variables
    var maxTaps:Int = 0
    var currentTaps:Int = 0
    
    
    @IBOutlet weak var logoImg:UIImageView!
    @IBOutlet weak var howManyTapsTxt:UITextField!
    @IBOutlet weak var playBtn:UIButton!
    @IBOutlet weak var tapBtn:UIButton!
    @IBOutlet weak var tapsLabel:UILabel!
    
    @IBAction func onPlayButtonPressed(sender:UIButton!) {
        
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            logoImg.hidden = true
            howManyTapsTxt.hidden = true
            playBtn.hidden = true
            
            tapBtn.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLabel()
            
        }
        
    }
    
    @IBAction func onCoinPressed(sender:UIButton!) {
        
        currentTaps++
        updateTapsLabel()
        if isGameOver() {
            restartGame()
        }
        
    }
    
    func updateTapsLabel() {
        tapsLabel.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        }
        else {
            return false
        }
    }
    
    func restartGame() {
        
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        
        logoImg.hidden = false
        howManyTapsTxt.hidden = false
        playBtn.hidden = false
        
        tapBtn.hidden = true
        tapsLabel.hidden = true
    }
}

