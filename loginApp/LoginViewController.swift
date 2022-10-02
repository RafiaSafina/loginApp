//
//  LoginViewController.swift
//  loginApp
//
//  Created by Рафия Сафина on 02.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var addNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    let userName = "User"
    let password = "password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func logInButton() {
        switch (addNameTextField.text,passwordTextField.text) {
        case ("User", "password"):
            print("ok")
        default:
            showWrongDataAlert()
            passwordTextField.text = ""
        }
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
    
    
    private func showWrongDataAlert() {
        let alert = UIAlertController(title: "Invalid login or password", message: "Please, enter correct login and password", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

