//
//  Config.swift
//  Quickly
//
//  Created by Pedro Sousa on 11/05/20.
//  Copyright © 2020 Quickly. All rights reserved.
//

import UIKit

struct Config {
    
    func mainController() -> UIViewController {
        let nav = configureNavController()
        let controller = Initial()
        
        nav.viewControllers = [controller]
        
        return nav
    }
    
    private func configureNavController() -> UINavigationController {
        let nav = UINavigationController()
        nav.navigationBar.barTintColor = .primaryLight
        nav.navigationBar.tintColor = .primaryDark
        nav.navigationBar.titleTextAttributes = [.font: UIFont.systemFont(ofSize: 21, weight: .bold)]
        nav.navigationBar.shadowImage = UIImage()
        nav.navigationBar.isTranslucent = false
        
        return nav
    }
    
    private func configureStatusBar() {
        let statusBar: UIView = UIApplication.shared.value(forKey: "statusBar") as! UIView
        if statusBar.responds(to:#selector(setter: UIView.backgroundColor)) {
            statusBar.backgroundColor = .primaryLight
            statusBar.tintColor = .primaryDark
        }
    }
}
