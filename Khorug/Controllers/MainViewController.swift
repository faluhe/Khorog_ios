//
//  MainViewController.swift
//  Khorug
//
//  Created by Ismailov Farrukh on 17/05/22.
//

import UIKit

class MainViewController: UIViewController {
    
    private lazy var bannerAdapter: BannerCollectionVIewAdapter = BannerCollectionVIewAdapter(with: mainView.bannerCollectionView)
    
    private lazy var newsAdapter: NewsAdapter = NewsAdapter(with: mainView.newsCollectionView)
    
    
    var mainView: MainScreenView {
        return self.view as! MainScreenView
    }
    
    
    override func loadView() {
        super.loadView()
        view = MainScreenView(frame: .zero)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavTitle()
        parseData()
    }
    
    
    func setupNavTitle(){
        view.addSubview(navStackView)
        navigationItem.titleView = navStackView
        
        navIcon.heightAnchor.constraint(equalToConstant: 40).isActive = true
        navIcon.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        if let navigationBar = navigationController?.navigationBar {
            navStackView.leftAnchor.constraint(equalTo: navigationBar.leftAnchor, constant: 16).isActive = true
        }
    }
    
    
    
    lazy var navIcon: UIImageView = {
        let icon = UIImageView()
        icon.image = K.Images.nationalEmblem
        return icon
    }()
    
    
    lazy var navTitle: UILabel = {
        let lbl = TextLabel(text: "Исполнительный орган местного самоуправления города Хорог", textAlignment: .left, font: .mySystemFont(ofSize: 14, weight: .medium), color: .appLblColor)
        lbl.spacing = 3
        lbl.numberOfLines = 0
        return lbl
    }()
    
    
    lazy var navStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [navIcon, navTitle])
        navTitle.setTextSpacingBy(value: 0.8)
        view.axis = .horizontal
        view.spacing = 20
        view.alignment = .leading
        view.distribution = .fillProportionally
        return view
    }()
    
    
    
    func parseData() {
        bannerAdapter.update(with: UIImage(named: "banner")!)
        newsAdapter.update()
    }
    
}





