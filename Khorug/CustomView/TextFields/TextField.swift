//
//  TextField.swift
//  Khorug
//
//  Created by Ismailov Farrukh on 20/05/22.
//

import UIKit

class TextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        borderStyle = .roundedRect
        clearButtonMode = .never
        
        font = UIFont.systemFont(ofSize: 16)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        
        autocorrectionType = .no
        returnKeyType = .go
        
        if #available(iOS 10.0, *) {
            textContentType = .none
        } else {
        }
    }
}
