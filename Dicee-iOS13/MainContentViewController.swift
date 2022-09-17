//
//  MainContentViewController.swift
//  Dicee-iOS13
//
//  Created by Mpilo Pillz on 2022/09/17.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import UIKit

class MainContentViewController: UIViewController {
    
    let contentView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    let backgroundImageView: UIImageView = {
        let backgroundImage = UIImageView()
        
        return backgroundImage
    } ()
    
    let logoImageView: UIImageView = {
        let logoImage = UIImageView()
        
        return logoImage
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpContentView()
        
    }

}
