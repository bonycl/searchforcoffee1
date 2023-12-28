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
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    private func setupUI() {
        self.view.backgroundColor = .white
        navigationController?.navigationBar.topItem?.title = "Регистрация"
        
        self.view.addSubview(emailLabel)
        self.view.addSubview(emailTextField)
        self.view.addSubview(passwordLabel)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(repeatPasswordLabel)
        self.view.addSubview(repaetPasswordTextField)
        
        //MARK: - constrains
        emailLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(18)
            make.right.equalToSuperview().inset(15)
            make.top.equalToSuperview().offset(119)
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
    }
    
    
    
    
    
    
   


}

