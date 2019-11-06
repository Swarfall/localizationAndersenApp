//
//  Local.swift
//  LocalizationAndersenApp
//
//  Created by admin on 05.11.2019.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import Foundation

let APPLE_LANGUAGE_KEY = "AppleLanguages"

class L102Language {
    class func currentAppleLanguage() -> String {
        let userdef = UserDefaults.standard
        let langArray = userdef.object(forKey: APPLE_LANGUAGE_KEY) as! NSArray
        let current = langArray.firstObject as! String
        
        return current
    }
    
    class func setAppleLAnguageTo(lang: String) {
        let userdef = UserDefaults.standard
        userdef.set([lang, currentAppleLanguage()], forKey: APPLE_LANGUAGE_KEY)
        userdef.synchronize()
    }
}


