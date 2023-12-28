//
//  CustomTextFiled.swift
//  PetFinder
//
//  Created by Dinar Shakirov on 20.12.2023.
//

import UIKit

class CustomTextField: UITextField {

    enum CustomTextFieldType {
        case email
        case password
    }
//    private let placeholderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    private let authFieldType: CustomTextFieldType
    private let rightEyeButton: UIButton = {
        
        let rightEyeButton = UIButton()
        rightEyeButton.setImage(UIImage(named: "eyeslash"), for: .normal)
        return rightEyeButton
    }()
    
    init(fieldType: CustomTextFieldType) {
        self.authFieldType = fieldType
        super.init(frame: .zero)
        
        self.clearButtonMode = .whileEditing
        
        self.backgroundColor = .white
        self.layer.cornerRadius = 26
        self.font = .systemFont(ofSize: 14, weight: .light)
        self.textColor = .black
        self.textColor = #colorLiteral(red: 0.6862745098, green: 0.5803921569, blue: 0.4745098039, alpha: 1) //#AF9479
        
        let placeholderColor = #colorLiteral(red: 0.6862745098, green: 0.5803921569, blue: 0.4745098039, alpha: 1) //#AF9479
        let placeholderText = (fieldType == .email) ? "example@example.com" : ""
        let attributes = [NSAttributedString.Key.foregroundColor: placeholderColor]
        self.attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: attributes)
        
        //to apply Shadow
        self.layer.shadowOpacity = 0.4
        self.layer.shadowRadius = 3.0
        self.layer.borderColor = UIColor.black.withAlphaComponent(0.25).cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowColor = UIColor.black.cgColor //Any dark color

        //to apply padding
        let paddingView : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
        
        self.returnKeyType = .done
        self.autocorrectionType = .no
        self.autocapitalizationType = .none
        
        switch authFieldType {
        case .email:
            self.placeholder = "example@example.com"
            self.keyboardType = .emailAddress
            self.textContentType = .emailAddress
                  
        case .password:
            self.placeholder = ""
            self.isSecureTextEntry = true
            self.textContentType = .oneTimeCode
            self.textContentType = .password
            self.setupRightImageView()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - setup ui hide/show button
    private func setupRightImageView(){
        let rightView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 50))
        
        //TODO: background for setup constrains
//        rightView.backgroundColor = .lightGray
        
        //show eye position setup
        rightEyeButton.frame = CGRect(x: 5, y: 12, width: 25, height: 25)
        
        rightView.addSubview(rightEyeButton)
    
        rightEyeButton.addTarget(self, action: #selector(showOrHidePassword), for: .touchUpInside)
        
        self.rightViewMode = .always
        self.rightView = rightView
        
    }
    
    @objc func showOrHidePassword(){
            print("DEBUG: show/hide password button pressed")
        if isSecureTextEntry {
            rightEyeButton.setImage(UIImage(named: "eye"), for: .normal)
        } else {
            rightEyeButton.setImage(UIImage(named: "eyeslash"), for: .normal)
        }
            isSecureTextEntry = !isSecureTextEntry
        }
}

