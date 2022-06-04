//
//  NewsCell.swift
//  Khorug
//
//  Created by Ismailov Farrukh on 03/06/22.
//

import UIKit

class NewsCell: UICollectionViewCell {
   
    static let identifier = "NewsCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
            configureUI()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configureUI(){
        addSubviews(image, stackView)
        
        NSLayoutConstraint.activate([
            image.leftAnchor.constraint(equalTo: leftAnchor,constant: 16),
            image.rightAnchor.constraint(equalTo: stackView.leftAnchor,constant: -16),
            image.topAnchor.constraint(equalTo: topAnchor,constant: 16),
            image.heightAnchor.constraint(equalToConstant: 120),
            image.widthAnchor.constraint(equalToConstant: 120),
            image.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            stackView.rightAnchor.constraint(equalTo: rightAnchor,constant: -16),
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
        
    }
    
    
    lazy var image: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "newss")
        img.roundCorners(.all, radius: 5)
        return img
    }()
    
    lazy var title: UILabel = {
        let lbl = TextLabel(text: "7 особенностей Хорога, которые могли бы позаимствовать жители других регионов...", textAlignment: .left, font: .mySystemFont(ofSize: 14, weight: .medium), color: .appLblColor)
        lbl.numberOfLines = 0
        return lbl
    }()
    
    
    lazy var date: UILabel = {
        let lbl = TextLabel(text: "Новость | 8 января 2022", textAlignment: .left, font: .mySystemFont(ofSize: 11, weight: .regular), color: .gray)
        return lbl
    }()
    
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [date, title])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.distribution = .fillProportionally
        return stackView
    }()
}
