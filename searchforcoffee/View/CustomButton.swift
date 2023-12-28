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
            self.backgroundColor = #colorLiteral(red: 0.2039215686, green: 0.1764705882, blue: 0.1019607843, alpha: 1) //#342D1A
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
//            self.setTitleColor = UIColor(red: 52, green: 45, blue: 26, alpha: 1)
       
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func updateBackgroundColor() {
           if self.isEnabled {
               self.backgroundColor = #colorLiteral(red: 0.2039215686, green: 0.1764705882, blue: 0.1019607843, alpha: 1) //#342D1A
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

