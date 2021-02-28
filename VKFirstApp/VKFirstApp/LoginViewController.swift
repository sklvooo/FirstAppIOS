//
//  ViewController.swift
//  VKFirstApp
//
//  Created by Сергей Соколов on 17.02.2021.
//  Copyright © 2021 Сергей Соколов. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    

    @IBOutlet var loginButtonStyle: UIButton!
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButtonStyle.layer.borderWidth = 1
        loginButtonStyle.layer.borderColor = UIColor.white.cgColor
        loginButtonStyle.layer.cornerRadius = 5
    
    }

    
    @IBAction func loginButtonPress(_ sender: UIButton) {
        if loginTextField.text == "" && passwordTextField.text == "" {
            performSegue(withIdentifier: "mainScreenSegue", sender: self)
        } else {
            print("Wrong password")
        }
    }
}

