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
        configureBackgroundImage()
    }
    
    func configureBackgroundImage() {
        
        backgroundImageView.contentMode = UIView.ContentMode.scaleToFill
//        backgroundImageView.frame.size.width = 200
//        backgroundImageView.frame.size.height = 200
//        backgroundImageView.frame.size.height = 200
//        backgroundImageView.center = self.view.center
        
        backgroundImageView.image = UIImage(named: "GreenBackground")
        
//        contentView.addSubview(backgroundImageView)
    }

    func setUpBackGroundImageContraints() {
//        backgroundImageView.backgroundColor = .green
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
//        backgroundImageView.heightAnchor.constraint(equalToConstant: contentView.frame.height).isActive = true
        backgroundImageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true


    }
    
    func setUpContentViewConstraints() {
            view.addSubview(contentView)

            contentView.addSubview(backgroundImageView)
            contentView.translatesAutoresizingMaskIntoConstraints = false
            
            contentView.heightAnchor.constraint(equalToConstant: view.frame.height).isActive = true
            contentView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            contentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            contentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        }

}
