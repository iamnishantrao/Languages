//
//  Shakeable.swift
//  Languages
//
//  Created by Nishant on 18/07/17.
//  Copyright © 2017 rao. All rights reserved.
//

import UIKit

// protocol to shale UIView when clicked
protocol Shakeable { }

extension Shakeable where Self: UIView {
    
    func shake() {
        
        let anim = CABasicAnimation(keyPath: "position")
        anim.duration = 0.05
        anim.repeatCount = 5
        anim.autoreverses = true
        anim.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4.0, y: self.center.y))
        anim.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4.0, y: self.center.y))
        layer.add(anim, forKey: "position")
        
    }
}
