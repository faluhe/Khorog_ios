//
//  Helper.swift
//  Khorug
//
//  Created by Ismailov Farrukh on 01/06/22.
//

import UIKit

enum UIHelper {
    
    static func createVerticalFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        return flowLayout
    }
    
    static func createHorizontalFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 0
        return flowLayout
    }
}


