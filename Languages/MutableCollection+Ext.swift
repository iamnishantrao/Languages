//
//  MutableCollection+Ext.swift
//  Languages
//
//  Created by Nishant on 18/07/17.
//  Copyright © 2017 rao. All rights reserved.
//

import Foundation

extension MutableCollection where Index == Int {
    
    mutating func shuffle() {
        
        if count < 2 { return }
        
        for i in startIndex ..< endIndex - 1 {
            
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            
            // guard if i and j are equal
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}
