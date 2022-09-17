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
    
//    let backgroundImage = UIImage(named: "GreenBackground")
    
    let backgroundImageView: UIImageView = {
        let backgroundImage = UIImageView()
        
        return backgroundImage
    } ()
        
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpContentView()
        
    }

}
