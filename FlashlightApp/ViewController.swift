//
//  ViewController.swift
//  FlashlightApp
//
//  Created by Eric Snow on 9/27/18.
//  Copyright © 2018 Eric Snow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var backGroundDisplay: UIView!
    @IBOutlet weak var ifActionSwitchIsOn: UISwitch!
    @IBOutlet weak var colorPicker: UIButton!
    @IBOutlet weak var powerButton: UIButton!
    
    var colorPickerActivated : Bool = false
    var powerButtonActivated : Bool = false
    var onOffSwitch : Bool = true
    var color = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    var colorNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        powerButton.isHidden = true
        colorPicker.isHidden = true
        powerButton.isEnabled = false
        colorPicker.isEnabled = false
        ifActionSwitchIsOn.isOn = false
    }

    @IBAction func onOffSwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            colorPicker.isHidden = false
            colorPicker.isEnabled = true
            powerButton.isHidden = false
            powerButton.isEnabled = true
            print("on")
            } else {
            backGroundDisplay.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            colorPicker.isHidden = true
            colorPicker.isEnabled = false
            powerButton.isHidden = true
            powerButton.isEnabled = false
            print("off")
        }
    }
    
    
    @IBAction func downPressed(_ sender: UIButton) {
        if onOffSwitch == true {
            backGroundDisplay.backgroundColor = color
        } else {
            backGroundDisplay.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
    }
        
        
    @IBAction func buttonReleased(_ sender: UIButton) {
        if onOffSwitch == true {
            backGroundDisplay.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        } else {
            backGroundDisplay.backgroundColor = color
        }
        
        
    }
        
    
    
    @IBAction func lightColorPicker(_ sender: UIButton) {
        colorNumber += 1
        colorNumber %= 5
       switch colorNumber {
        case 0:
             sender.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            color = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        case 1:
            sender.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
            color = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
        case 2:
            sender.backgroundColor = #colorLiteral(red: 0.5563425422, green: 0.9793455005, blue: 0, alpha: 1)
            color = #colorLiteral(red: 0.5563425422, green: 0.9793455005, blue: 0, alpha: 1)
        case 3:
            sender.backgroundColor = #colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 1)
            color = #colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 1)
        case 4:
           sender.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
           color = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        default:
            break
        }
    
    }
    
    

    
  

}

