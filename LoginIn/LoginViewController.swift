//
//  ViewController.swift
//  LoginIn
//
//  Created by Denis Shpagin on 18.03.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let login = "Denis"
    private let password = "12345"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if userNameTextField.text != login || passwordTextField.text != password {
            showAlert(with: "Oops", and: "Invalid username or password")
        } else {
            guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
            welcomeVC.welcomeUserName = "Welcome \(userNameTextField.text ?? "")"
        }
    }
    
    @IBAction func promptsLoginAndPassword(_ sender: UIButton) {
        sender.tag != 1
        ? showAlert(with: "Oops", and: "Your login - \(login)")
        : showAlert(with: "Opps", and: "Your password - \(password)")
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - alertController

extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(alertAction)
        present(alert, animated: true) {
            self.passwordTextField.text = ""
        }
    }
}

// MARK: - keyBoard

extension LoginViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
