//
//  ViewController.swift
//  LocalizationAndersenApp
//
//  Created by admin on 05.11.2019.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    
    let l102lang = L102Language()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
    }

    @IBAction func didTapChangeLanguage(_ sender: Any) {
        if L102Language.currentAppleLanguage() == "ar" {
            
        } else {
            L102Language.setAppleLAnguageTo(lang: "en")
        }
    }
    
}

