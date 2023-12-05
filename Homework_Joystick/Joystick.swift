//
//  Joystick.swift
//  Homework_Joystick
//
//  Created by Alexandr Zuev on 4.12.23.
//

import UIKit

protocol ViewDelegate: AnyObject {
    func buttonPressed(_ sender: Joystick)
}

class Joystick: UIView {
    let buttonUp = UIButton()
    let buttonDown = UIButton()
    let buttonLeft = UIButton()
    let buttonRight = UIButton()

    weak var delegate: ViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(buttonUp)
        buttonUp.translatesAutoresizingMaskIntoConstraints = false
        buttonUp.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        buttonUp.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -20).isActive = true
        buttonUp.setImage(UIImage(systemName: "arrowshape.up"), for: .normal)
        buttonUp.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        buttonUp.backgroundColor = .red
        
        addSubview(buttonDown)
        buttonDown.translatesAutoresizingMaskIntoConstraints = false
        buttonDown.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        buttonDown.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 20).isActive = true
        buttonDown.setImage(UIImage(systemName: "arrowshape.down"), for: .normal)
        buttonDown.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        buttonDown.backgroundColor = .red

        addSubview(buttonLeft)
        buttonLeft.translatesAutoresizingMaskIntoConstraints = false
        buttonLeft.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -20).isActive = true
        buttonLeft.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        buttonLeft.setImage(UIImage(systemName: "arrowshape.left"), for: .normal)
        buttonLeft.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        buttonLeft.backgroundColor = .red

        addSubview(buttonRight)
        buttonRight.translatesAutoresizingMaskIntoConstraints = false
        buttonRight.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 20).isActive = true
        buttonRight.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        buttonRight.setImage(UIImage(systemName: "arrowshape.right"), for: .normal)
        buttonRight.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        buttonRight.backgroundColor = .red

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        delegate?.buttonPressed(self)
    }
    
}
