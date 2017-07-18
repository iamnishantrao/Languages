//
//  ReusableView.swift
//  Languages
//
//  Created by Nishant on 18/07/17.
//  Copyright © 2017 rao. All rights reserved.
//

import UIKit

protocol ReusableView {}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        // return class name for reuseIdentifier
        return String(describing: self)
    }
}
