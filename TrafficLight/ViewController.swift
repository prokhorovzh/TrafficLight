//
//  ViewController.swift
//  TrafficLight
//
//  Created by Евгений Прохоров on 01.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var buttonStart: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        redLight.clipsToBounds = true
        redLight.layer.cornerRadius = redLight.frame.size.height / 2
        
        yellowLight.clipsToBounds = true
        yellowLight.layer.cornerRadius = redLight.frame.size.height / 2
        
        greenLight.clipsToBounds = true
        greenLight.layer.cornerRadius = redLight.frame.size.height / 2
        
    }

    @IBAction func pressButton(_ sender: Any) {
        if buttonStart.titleLabel?.text == "Start" {
            buttonStart.setTitle("Next", for: .normal)
            redLight.alpha = 1
        } else if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        } else if greenLight.alpha == 1 {
            greenLight.alpha = 0.3
            redLight.alpha = 1
        }
    }
    
}

