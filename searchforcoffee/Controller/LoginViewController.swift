//
//  LoginViewController.swift
//  searchforcoffee
//
//  Created by Dinar Shakirov on 27.12.2023.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    private func setupUI() {
        self.view.backgroundColor = .white
        navigationController?.navigationBar.topItem?.title = "Регистрация"
    }

}
