//
//  TabBarController.swift
//  Khorug
//
//  Created by Ismailov Farrukh on 17/05/22.
//

import UIKit

class TabBarController: UITabBarController {

    
    let home = UINavigationController(rootViewController: MainViewController())
    let news = UINavigationController(rootViewController: NewsViewController())
    let ads = UINavigationController(rootViewController: AdsViewController())
    let map = UINavigationController(rootViewController: MapViewController())
    
    
    init() {
        super.init(nibName: nil, bundle: nil)
        let tabbar =  UITabBar.appearance()
        tabbar.tintColor = .appLblColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [home, news, ads, map]
        
        let item1 = UITabBarItem(title: "Главная", image: K.Images.home, tag: 0)
        let item2 = UITabBarItem(title: "Новости", image:  K.Images.news, tag: 1)
        let item3 = UITabBarItem(title: "Объявления", image:  K.Images.ads, tag: 2)
        let item4 = UITabBarItem(title: "Карта", image:  K.Images.map, tag: 3)
        
        
        home.tabBarItem = item1
        news.tabBarItem = item2
        ads.tabBarItem = item3
        map.tabBarItem = item4
        
    }
}
