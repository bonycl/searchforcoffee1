//
//  CustomButton.swift
//  PetFinder
//
//  Created by Dinar Shakirov on 20.12.2023.
//

import UIKit

class CustomButton: UIButton {

    init(title: String, hasBackground: Bool = false) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 26
        self.layer.masksToBounds = true
        self.titleLabel?.font = UIFont.systemFont(ofSize: 18,weight: .semibold)
        switch hasBackground {
        case true:
            //MARK: - Setup BackgroundColor for button
            self.backgroundColor = #colorLiteral(red: 0.9647058824, green: 0.8980392157, blue: 0.8196078431, alpha: 1) //F6E5D1
            // apply shadow
            self.layer.masksToBounds = false
            self.layer.shadowOpacity = 0.4
            self.layer.shadowRadius = 3.0
            
            self.layer.borderColor = UIColor.black.withAlphaComponent(0.25).cgColor
            self.layer.shadowOffset = CGSize(width: 0, height: 3)
            self.layer.shadowColor = UIColor.black.cgColor //Any dark color
            self.setTitleColor(.white, for: .normal)
                        
        case false:
            self.backgroundColor = .clear
//            self.setTitleColor ( #colorLiteral(red: 1, green: 0.5921106339, blue: 0.3732565343, alpha: 1), for: .normal)
       
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func updateBackgroundColor() {
           if self.isEnabled {
               self.backgroundColor = #colorLiteral(red: 0.9647058824, green: 0.8980392157, blue: 0.8196078431, alpha: 1) //F6E5D1
           } else {
               self.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
           }
       }
       
       // Переопределение свойства isEnabled для автоматического обновления цвета фона
       override var isEnabled: Bool {
           didSet {
               updateBackgroundColor()
           }
       }
}

