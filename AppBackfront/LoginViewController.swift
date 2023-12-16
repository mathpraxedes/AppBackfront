//
//  ViewController.swift
//  AppBackfront
//
//  Created by Matheus Praxedes on 16/12/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginScreen:LoginScreen?
    
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

