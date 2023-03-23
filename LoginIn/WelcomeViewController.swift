//
//  WelcomeViewController.swift
//  LoginIn
//
//  Created by Denis Shpagin on 18.03.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeUserName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = welcomeUserName
    }
}
