//
//  LanguageCell.swift
//  Languages
//
//  Created by Nishant on 17/07/17.
//  Copyright © 2017 rao. All rights reserved.
//

import UIKit

class LanguageCell: UICollectionViewCell, NibLoadableView {

    @IBOutlet weak var languageImage: UIImageView!
    @IBOutlet weak var languageLabel: UILabel!
    
    var language: Language!
    
    func configureCell(language: Language) {
        
        self.language = language
        languageImage.image = UIImage(named: language.languageId.rawValue)
        languageLabel.text = language.languageName
    }
    
}
