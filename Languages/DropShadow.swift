//
//  DropShadow.swift
//  Languages
//
//  Created by Nishant on 17/07/17.
//  Copyright © 2017 rao. All rights reserved.
//

import UIKit

// create a protocol to create a shadow under the UIView
protocol DropShadow {}

// constrain the extension to a certain type(i.e UIView)
extension DropShadow where Self: UIView {
    
    func addDropShadow() {
        // shadow for the UIView
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
        
    }
}

