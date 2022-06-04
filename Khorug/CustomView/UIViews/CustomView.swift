//
//  CustomView.swift
//  Khorug
//
//  Created by Ismailov Farrukh on 27/05/22.
//

import UIKit

class CustomView: UIView {

    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(borderColor: CGColor, borderWidth: CGFloat) {
        self.init(frame: .zero)
        self.configureView(borderColor: borderColor, borderWidth: borderWidth)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configureView(borderColor: CGColor, borderWidth: CGFloat){
        layer.borderColor = borderColor
        layer.borderWidth = borderWidth
        layer.cornerRadius = 4
    }
}
