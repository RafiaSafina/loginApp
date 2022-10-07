//
//  TabBarController.swift
//  loginApp
//
//  Created by Рафия Сафина on 07.10.2022.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UITabBarAppearance()
        tabBar.scrollEdgeAppearance = appearance
        tabBar.standardAppearance = appearance
    }

}
