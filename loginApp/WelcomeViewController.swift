//
//  WelcomeViewController.swift
//  loginApp
//
//  Created by Рафия Сафина on 02.10.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var userName: UILabel!
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userName.text = username
    }
    
}
