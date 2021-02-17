//
//  ViewController.swift
//  VKFirstApp
//
//  Created by Сергей Соколов on 17.02.2021.
//  Copyright © 2021 Сергей Соколов. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet var nameInputField: UITextField!
    @IBOutlet var passwordInputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordInputField.isSecureTextEntry = true
    }

    @IBAction func pressOnLoginButton(_ sender: Any) {
    }
    
}

