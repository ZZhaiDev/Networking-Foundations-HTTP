//
//  AppDelegate.swift
//  movie manager
//
//  Created by zijia on 7/23/19.
//  Copyright © 2019 zijia. All rights reserved.
//

import UIKit

class LoginButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 5
        tintColor = UIColor.white
        backgroundColor = UIColor.primaryDark
    }
    
}
