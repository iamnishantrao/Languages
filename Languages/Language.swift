//
//  Language.swift
//  Languages
//
//  Created by Nishant on 17/07/17.
//  Copyright © 2017 rao. All rights reserved.
//

import Foundation

enum Languages: String {
    
    case cPlus = "C++"
    case html5 = "HTML5"
    case java = "Java"
    case javaScript = "JavaScript"
    case mySQL = "mySQL"
}

enum LanguageId: String {
    
    case cPlus = "c++"
    case html5 = "html5"
    case java = "java"
    case javaScript = "javascript"
    case mySQL = "mysql"
}

enum Use: String {
    
    case cPlus = "Software Development"
    case html5 = "Web Development"
    case java = "Java Development"
    case javaScript = "Web Design"
    case mySQL = "Database"
}

struct Language {
    
    private var _id: Int!
    private var _languageName: String!
    private var _languageId: LanguageId!
    private var _useId: Use!
    
    var id: Int {
        return _id
    }
    
    var languageName: String {
        return _languageName
    }
    
    var languageId: LanguageId {
        return _languageId
    }
    
    var useId: Use {
        return _useId
    }
    
    init(id: Int, languageName: String, languageId: Int, useId: Int) {
     
        _id = id
        _languageName = languageName
        
        // switch for language
        switch languageId {
            
        case 2:
            self._languageId = LanguageId.html5
        case 3:
            self._languageId = LanguageId.java
        case 4:
            self._languageId = LanguageId.javaScript
        case 5:
            self._languageId = LanguageId.mySQL
        default:
            self._languageId = LanguageId.cPlus
        }
        
        switch useId {
            
        case 2:
            self._useId = Use.html5
        case 3:
            self._useId = Use.java
        case 4:
            self._useId = Use.javaScript
        case 5:
            self._useId = Use.mySQL
        default:
            self._useId = Use.cPlus
        }
        
    }
}



