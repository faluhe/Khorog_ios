//
//  NewsHeaderView.swift
//  Khorug
//
//  Created by Ismailov Farrukh on 03/06/22.
//

import UIKit

class NewsHeader: UICollectionReusableView {
    
    static let identifier = "NewsCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configureUI(){
        addSubviews(image, title, date)
        
        NSLayoutConstraint.activate([
            image.leftAnchor.constraint(equalTo: leftAnchor,constant: 16),
            image.rightAnchor.constraint(equalTo: rightAnchor,constant: -16),
            image.topAnchor.constraint(equalTo: topAnchor),
            image.heightAnchor.constraint(equalToConstant: 178),
            image.bottomAnchor.constraint(equalTo: title.topAnchor,constant: -16),
            
            title.leftAnchor.constraint(equalTo: leftAnchor,constant: 16),
            title.rightAnchor.constraint(equalTo: rightAnchor,constant: -16),
            title.bottomAnchor.constraint(equalTo: date.topAnchor,constant: -8),
            
            date.leftAnchor.constraint(equalTo: leftAnchor,constant: 16),
            date.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -16)
        ])
        
    }
    
    
    lazy var image: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "newss")
        return img
    }()
    
    lazy var title: UILabel = {
        let lbl = TextLabel(text: "7 особенностей Хорога, которые могли бы позаимствовать жители других регионов...", textAlignment: .left, font: .mySystemFont(ofSize: 14, weight: .medium), color: .appLblColor)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    lazy var date: UILabel = {
        let lbl = TextLabel(text: "Новость | 8 января 2022", textAlignment: .left, font: .mySystemFont(ofSize: 11, weight: .regular), color: .gray)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
}
