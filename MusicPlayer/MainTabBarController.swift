//
//  MainTabBarController.swift
//  MusicPlayer
//
//  Created by Михаил Ушаков on 03.07.2020.
//  Copyright © 2020 Михаил Ушаков. All rights reserved.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        tabBar.tintColor = #colorLiteral(red: 1, green: 0, blue: 0.3764705882, alpha: 1)
        
        viewControllers =  [
            generateViewController(rootViewController: SearchViewController(), title: "Search"),
            generateViewController(rootViewController: LIbraryViewController(), title: "Library")
        ]
        
    }
    
    private func generateViewController(rootViewController: UIViewController, title: String) -> UIViewController {
        
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        
        navigationVC.tabBarItem.title = title
        navigationVC.navigationItem.title = title
        navigationVC.navigationBar.prefersLargeTitles = true
        
        return navigationVC
    }
    
}
