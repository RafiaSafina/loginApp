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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = addNameTextField.text
    }
    
    @IBAction func logInButton() {
        if (addNameTextField.text,  passwordTextField.text) != (userName, password) {
            showWrongDataAlert()
            passwordTextField.text = ""
        }
    }
    
    @IBAction func showUserNameButtonTapped() {
        showAlert(title: "Ooops!", message: "Your user name is \(userName)!", bottomTitle: "OK")
    }
    
    
    @IBAction func showPasswordButtonTapped() {
        showAlert(title: "Ooops!", message: "Your password is \(password)!", bottomTitle: "OK")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        addNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showWrongDataAlert() {
        showAlert(title: "Invalid login or password", message: "Please, enter correct login and password", bottomTitle: "OK")
    }
     
    private func showAlert(title: String, message: String, bottomTitle: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: bottomTitle, style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
}

