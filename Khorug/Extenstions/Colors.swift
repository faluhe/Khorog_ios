//
//  Colors.swift
//  Khorug
//
//  Created by Ismailov Farrukh on 18/05/22.
//

import UIKit

extension UIColor {
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat? = 1) -> UIColor {
        return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha!)
    }
    
    static let navColor: UIColor = rgb(red: 237, green: 244, blue: 253, alpha: 1)
    static let appLblColor: UIColor = rgb(red: 34, green: 34, blue: 34, alpha: 1)
    static let viewBorderColor: UIColor = rgb(red: 193, green: 217, blue: 248, alpha: 1)
    static let gray: UIColor = rgb(red: 122, green: 122, blue: 122, alpha: 1)
    static let blue: UIColor = rgb(red: 71, green: 145, blue: 235, alpha: 1)
    static let darkBlue: UIColor = rgb(red: 32, green: 45, blue: 77, alpha: 1)
    
    
    
    
     
}
