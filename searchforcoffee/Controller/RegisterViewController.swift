//
//  ViewController.swift
//  searchforcoffee
//
//  Created by Dinar Shakirov on 27.12.2023.
//

import UIKit
import SnapKit

class RegisterViewController: UIViewController {

    //MARK: - UI Components
    private let emailLabel = HeaderTextLabel(title: "e-mail")
    private let emailTextField = CustomTextField(fieldType: .email)
    private let passwordLabel = HeaderTextLabel(title: "Пароль")
    private let passwordTextField = CustomTextField(fieldType: .password)
    private let repeatPasswordLabel = HeaderTextLabel(title: "Повторите пароль")
    private let repaetPasswordTextField = CustomTextField(fieldType: .password)
    private let registratePressed = CustomButton(title: "Регистрация")
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.registratePressed.addTarget(self, action: #selector(goToNextVc), for: .touchUpInside)
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.backgroundColor = .white
        self.navigationItem.title = "Регистрация"
    }

    private func setupUI() {
        registratePressed.isEnabled = true
        
        self.view.addSubview(emailLabel)
        self.view.addSubview(emailTextField)
        self.view.addSubview(passwordLabel)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(repeatPasswordLabel)
        self.view.addSubview(repaetPasswordTextField)
        self.view.addSubview(registratePressed)
        
        //MARK: - constrains
        emailLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(18)
            make.right.equalToSuperview().inset(15)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(190)
        }
        emailTextField.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(18)
            make.right.equalToSuperview().inset(15)
            make.top.equalTo(emailLabel.snp.bottom).offset(15+8)
            make.height.equalTo(53)
        }
        passwordLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(18)
            make.right.equalToSuperview().inset(15)
            make.top.equalTo(emailTextField.snp.bottom).offset(24+5)
        }
        passwordTextField.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(18)
            make.right.equalToSuperview().inset(15)
            make.top.equalTo(passwordLabel.snp.bottom).offset(15+8)
            make.height.equalTo(53)
        }
        repeatPasswordLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(18)
            make.right.equalToSuperview().inset(15)
            make.top.equalTo(passwordTextField.snp.bottom).offset(24+5)
        }
        repaetPasswordTextField.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(18)
            make.right.equalToSuperview().inset(15)
            make.top.equalTo(repeatPasswordLabel.snp.bottom).offset(15+8)
            make.height.equalTo(53)
        }
        registratePressed.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(18)
            make.right.equalToSuperview().inset(15)
            make.top.equalTo(repaetPasswordTextField.snp.bottom).offset(30)
            make.height.equalTo(53)
        }
    }
    
    @objc private func goToNextVc() {
        print("DEBUG :", "goToNextVc")
        let vc = LoginViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }

}

