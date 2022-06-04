//
//  AppDelegate.swift
//  Khorug
//
//  Created by Ismailov Farrukh on 17/05/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        configureApp()
        changeStatusBarColor()
        return true
    }
    
    //MARK: - Custom font initialize
    override init() {
        super.init()
        UIFont.overrideInitialize()
    }
    
    func configureApp(){
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = TabBarController()
        window?.backgroundColor = .white
        
        UINavigationBar.appearance().backgroundColor = .navColor
    }
    
    
    //MARK: - Change status bar color
    func changeStatusBarColor(){
        if #available(iOS 13, *) {
            let statusBar = UIView(frame: (UIApplication.shared.keyWindow?.windowScene?.statusBarManager?.statusBarFrame)!)
            statusBar.backgroundColor = .navColor
            UIApplication.shared.keyWindow?.addSubview(statusBar)
        }
    }
    
}


