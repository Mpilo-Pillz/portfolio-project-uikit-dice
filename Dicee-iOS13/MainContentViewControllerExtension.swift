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
        configureBackgroundImage()
        setUpLogoImage()
        setUpDiceImageOne()
        
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
//        diceOneImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 20).isActive = true
        diceOneImageView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 70).isActive = true
    }
    
    func setUpContentViewConstraints() {
            view.addSubview(contentView)

            contentView.addSubview(backgroundImageView)
            contentView.addSubview(logoImageView)
            contentView.addSubview(diceOneImageView)
        
            contentView.translatesAutoresizingMaskIntoConstraints = false
            
            contentView.heightAnchor.constraint(equalToConstant: view.frame.height).isActive = true
            contentView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            contentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            contentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        }

}
