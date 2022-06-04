//
//  BannerCell.swift
//  Khorug
//
//  Created by Ismailov Farrukh on 02/06/22.
//

import UIKit

class BannerCell: UICollectionViewCell {
    static let identifier = "BannerCell"
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews(image, coverView, pageControl)
        image.pinToEdges(of: self)
        coverView.pinToEdges(of: self)
        
        NSLayoutConstraint.activate([
            titleStackView.leftAnchor.constraint(equalTo: leftAnchor,constant: 16),
            titleStackView.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -16),
            pageControl.rightAnchor.constraint(equalTo: rightAnchor, constant: -30),
            pageControl.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            pageControl.centerYAnchor.constraint(equalTo: secondaryTitle.centerYAnchor)
        ])
    }
    
    

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    lazy var image: UIImageView = {
        let img = UIImageView()
        img.roundCorners(.all, radius: 5)
        return img
    }()
    
    
    lazy var coverView: UIView = {
        let view = UIView()
        view.backgroundColor = .black.withAlphaComponent(0.1)
        view.addSubviews(titleStackView)
        view.roundCorners(.all, radius: 5)
        return view
    }()
    
    
    lazy var title: UILabel = {
        let lbl = TextLabel(text: "Пешие походы в Хороге", textAlignment: .left, font: .mySystemFont(ofSize: 20, weight: .semibold), color: .white)
        return lbl
    }()
    
    
    lazy var secondaryTitle: UILabel = {
        let lbl = TextLabel(text: "Статья | 8 января 2022", textAlignment: .left, font: .mySystemFont(ofSize: 13, weight: .semibold), color: .white)
        return lbl
    }()
    
    
    lazy var titleStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [title, secondaryTitle])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    
    lazy var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.numberOfPages = 4
        
        //removes padding
        if #available(iOS 14.0, *) {
            pageControl.backgroundStyle = .minimal
            pageControl.allowsContinuousInteraction = false
        }
        //increase dots
        pageControl.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        return pageControl
    }()
    
}


