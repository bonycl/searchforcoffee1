//
//  LoginViewController.swift
//  searchforcoffee
//
//  Created by Dinar Shakirov on 27.12.2023.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemPink
        navigationController?.navigationBar.topItem?.title = "Регистрация"
        navigationController?.navigationBar.barTintColor = .white
    }
}
