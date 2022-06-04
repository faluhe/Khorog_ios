//
//  TetxtField.swift
//  Khorug
//
//  Created by Ismailov Farrukh on 20/05/22.
//

import UIKit

enum TextFieldImageSide {
    case left
    case right
}

extension UITextField {
    func setUpImage(imageName: UIImage?, on side: TextFieldImageSide) {
      
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 15, y: 10, width: 20, height: 20)
        button.tintColor = .appLblColor
        button.setImage(imageName, for: .normal)
        
        let imageContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 45, height: 40))
        imageContainerView.addSubview(button)
        
        
        switch side {
        case .left:
            leftView = imageContainerView
            leftViewMode = .always
        case .right:
            rightView = imageContainerView
            rightViewMode = .always
        }
    }
    
}
