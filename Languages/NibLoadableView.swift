//
//  NibLoadableView.swift
//  Languages
//
//  Created by Nishant on 18/07/17.
//  Copyright © 2017 rao. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    
    static var nibName: String {
        // return Nib name for Xib
        return String(describing: self)
    }
}
