//
//  ViewController.swift
//  Homework_Joystick
//
//  Created by Alexandr Zuev on 3.12.23.
//

import UIKit

class ViewController: UIViewController, ViewDelegate {
    
    let joystick = Joystick()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(joystick)
        joystick.translatesAutoresizingMaskIntoConstraints = false
        joystick.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        joystick.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        joystick.delegate = self
    }
    
    func buttonPressed(_ sender: Joystick) {
        view.endEditing(true)
        sender.buttonUp.backgroundColor = .green
    }
}


