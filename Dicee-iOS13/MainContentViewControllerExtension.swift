//
//  MainContentView.swift
//  Dicee-iOS13
//
//  Created by Mpilo Pillz on 2022/09/17.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import UIKit

extension MainContentViewController {
    
    func setUpContentView() {
        
        setUpContentViewConstraints()
        setUpBackGroundImageContraints()
        setUpLogoImageConstraints()
        setUpDiceOneImageConstraints()
        setUpDiceTwoImageConstraints()
        setUpRollDiceButtonConstraints()
        
        configureBackgroundImage()
        
        setUpLogoImage()
        setUpDiceImageOne()
        setUpDiceImageTwo()
        setUpRollDiceButton()
        
    }
    
    func configureBackgroundImage() {
        
        backgroundImageView.contentMode = UIView.ContentMode.scaleToFill
        backgroundImageView.image = UIImage(named: "GreenBackground")
        
    }
    
    func setUpLogoImage() {
        logoImageView.contentMode = UIImageView.ContentMode.scaleAspectFit
        logoImageView.frame.size.width = 200
        logoImageView.frame.size.height = 200
        
        logoImageView.image = UIImage(named: "DiceeLogo")
        
    }
    
    func setUpDiceImageOne() {
        diceOneImageView.contentMode = UIImageView.ContentMode.scaleAspectFit
        diceOneImageView.frame.size.width = 120
        diceOneImageView.frame.size.height = 120
        
        diceOneImageView.image = UIImage(named: "DiceThree")
    }
    
    func setUpDiceImageTwo() {
        diceTwoImageView.contentMode = UIImageView.ContentMode.scaleAspectFit
        
        diceTwoImageView.image = UIImage(named: "DiceFour")
    }
    
    func setUpRollDiceButton() {
        rollDiceButton.setTitle("Roll", for: .normal)
        rollDiceButton.addTarget(self, action: #selector(rollButtonPressed), for: UIControl.Event.touchUpInside)
        
        rollDiceButton.backgroundColor = .white
        rollDiceButton.layer.cornerRadius = 10
        rollDiceButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: CGFloat(20))
        
//        rollDiceButton.frame.size.width = 300
//        rollDiceButton.frame.size.height = 300
        
    }

    func setUpBackGroundImageContraints() {

        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false

        backgroundImageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true

    }
    
    
    func setUpLogoImageConstraints() {
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        logoImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        logoImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 200).isActive = true
//        logoImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
    }
    
    func setUpDiceOneImageConstraints() {
        diceOneImageView.translatesAutoresizingMaskIntoConstraints = false
        
        diceOneImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 50).isActive = true

        diceOneImageView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 70).isActive = true
    }
    
    func setUpDiceTwoImageConstraints() {
        diceTwoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        diceTwoImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -50).isActive = true
        diceTwoImageView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 70).isActive = true
        
    }
    
    func setUpRollDiceButtonConstraints() {
        rollDiceButton.translatesAutoresizingMaskIntoConstraints = false
        
        rollDiceButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        rollDiceButton.topAnchor.constraint(equalTo: diceTwoImageView.bottomAnchor, constant: 50).isActive = true
        rollDiceButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 50).isActive = true
        rollDiceButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -50).isActive = true
        
    }
    
    func setUpContentViewConstraints() {
            view.addSubview(contentView)

            contentView.addSubview(backgroundImageView)
            contentView.addSubview(logoImageView)
            contentView.addSubview(diceOneImageView)
            contentView.addSubview(diceTwoImageView)
            contentView.addSubview(rollDiceButton)
        
            contentView.translatesAutoresizingMaskIntoConstraints = false
            
            contentView.heightAnchor.constraint(equalToConstant: view.frame.height).isActive = true
            contentView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            contentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            contentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        }
    
    @objc func rollButtonPressed(sender: UIButton) {
        print("Time to and func")
    }

}
