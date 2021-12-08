//
//  ViewController.swift
//  Traffic Lights
//
//  Created by Васильева Ольга on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    enum CurrentLight {
        case red, yellow, green
    }
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    var currentLight: CurrentLight? = nil
    let lightIsOn = 1.0
    let lightIsOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        redLight.layer.cornerRadius = 65
        yellowLight.layer.cornerRadius = 65
        greenLight.layer.cornerRadius = 65
        
        startButton.titleLabel?.text = "START"
        
    }

    @IBAction func changeLight(_ sender: Any) {
        
        greenLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        redLight.alpha = lightIsOff
        
        if currentLight == nil || currentLight == .green  {
            currentLight = .red
            redLight.alpha = lightIsOn
        } else if currentLight == .red {
            currentLight = .yellow
            yellowLight.alpha = lightIsOn
        } else if currentLight == .yellow {
            currentLight = .green
            greenLight.alpha = lightIsOn
        }
    }
    
}

