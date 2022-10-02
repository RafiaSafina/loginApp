//
//  LoginViewController.swift
//  loginApp
//
//  Created by Рафия Сафина on 02.10.2022.
//

import UIKit

class LoginViewController: UIViewController {

    let userName = "User"
    let password = "password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logInButton() {
        
    }
    
    @IBAction func showUserNameButtonTapped() {
        let alert = UIAlertController(title: "Ooops!", message: "Your user name is \(userName)", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func showPasswordButtonTapped() {
        let alert = UIAlertController(title: "Ooops!", message: "Your password is \(password)", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
}

