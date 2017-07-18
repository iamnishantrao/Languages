//
//  DataService.swift
//  Languages
//
//  Created by Nishant on 17/07/17.
//  Copyright © 2017 rao. All rights reserved.
//

import Foundation

protocol DataServiceDelegate: class {
    func languageDataLoaded()
}

//singleton class
class DataService {
    
    static let instance = DataService()
    
    var delegate: DataServiceDelegate?
    
    var languageArray: Array<Language> = []
    
    func loadLanguageData() {
        
        // languages data
        languageArray.append(Language(id: 1, languageName: "CPlusPlus", languageId: 1, useId: 1))
        languageArray.append(Language(id: 2, languageName: "HTML5", languageId: 2, useId: 2))
        languageArray.append(Language(id: 3, languageName: "Java", languageId: 3, useId: 3))
        languageArray.append(Language(id: 4, languageName: "JavaScript", languageId: 4, useId: 4))
        languageArray.append(Language(id: 5, languageName: "mySQL", languageId: 5, useId: 5))
        
        delegate?.languageDataLoaded()
        
    }
}
