//
//  RegistrationVC.swift
//  iChat
//
//  Created by Jinisha Savani on 11/11/18.
//  Copyright © 2018 Jinisha Savani. All rights reserved.
//

import UIKit
import ProgressHUD
import Firebase

class RegistrationVC: UIViewController {
    
    @IBOutlet weak var fullNameForReg: UITextField!
    @IBOutlet weak var emailForReg: UITextField!
    @IBOutlet weak var passwordForReg: UITextField!
    @IBOutlet weak var confirmPasswordForReg: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        
        if fullNameForReg.text != "" && emailForReg.text != "" && passwordForReg.text != "" &&  confirmPasswordForReg.text != "" {
            
            if passwordForReg.text == confirmPasswordForReg.text {
                
                registerUser()
                
            } else {
                ProgressHUD.showError("Password not Valid!")
                passwordForReg.text = ""
                confirmPasswordForReg.text = ""
            }
        } else {
            ProgressHUD.showError("All fields are required!")
        }
    }
    
    func registerUser() {
        
        Auth.auth().createUser(withEmail: emailForReg.text!, password: passwordForReg.text!) { (user, error) in
            
            if error != nil {
                print(error!)
            } else {
                ProgressHUD.show("Registration Successful!")
                self.performSegue(withIdentifier: "regToProfileVC", sender: self)
                ProgressHUD.dismiss()
            }
        }
    }
}
