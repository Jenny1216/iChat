//
//  WelcomeVC.swift
//  iChat
//
//  Created by Jinisha Savani on 11/1/18.
//  Copyright © 2018 Jinisha Savani. All rights reserved.
//


import Firebase
import FirebaseAuth
import ProgressHUD
import TextFieldEffects
import UIKit


class WelcomeVC: UIViewController, UITextFieldDelegate {
    
    //Prelinked Outlets
    @IBOutlet weak var logInEmailTxtField: UITextField!
    @IBOutlet weak var logInPasswrdTxtField: UITextField!
    
    let homeVC = HomeVC()
    let registrationVC = RegistrationVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
    }
    
    //IBActions
    @IBAction func logInButtonPressed(_ sender: Any) {
        
        dismissKeyboard()
        
        if logInEmailTxtField.text != "" && logInPasswrdTxtField.text != "" {
            loginUser()
        } else {
            ProgressHUD.showError("Inavlid Email or Password!")
        }
    }
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        dismissKeyboard()
    }
    
    func dismissKeyboard(){
        self.view.endEditing(true)
        logInEmailTxtField.resignFirstResponder()
        logInPasswrdTxtField.resignFirstResponder()
    }
    
    func clearTextField(){
        logInEmailTxtField.text = ""
        logInPasswrdTxtField.text = ""
    }
    
    func loginUser() {
        
        Auth.auth().signIn(withEmail: logInEmailTxtField.text!, password: logInPasswrdTxtField.text!) { (user, error) in
            
            if error != nil {
                print(error!)
                ProgressHUD.showError("Invalid Email or Password !")
            } else {
                ProgressHUD.show()
                self.performSegue(withIdentifier: "welcometoHomeVC", sender: nil)
                self.clearTextField()
                ProgressHUD.dismiss()
                
                //           TO-DO: Fetch User Id and store in user defaults
            }
        }
    }
}
