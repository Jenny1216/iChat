//
//  WelcomeVC.swift
//  iChat
//
//  Created by Jinisha Savani on 11/1/18.
//  Copyright © 2018 Jinisha Savani. All rights reserved.
//

import UIKit
import TextFieldEffects
import ProgressHUD

class WelcomeVC: UIViewController, UITextFieldDelegate {
    
    //Prelinked Outlets
    @IBOutlet weak var logInEmailTxtField: UITextField!
    @IBOutlet weak var logInPasswrdTxtField: UITextField!
    
    let homeVC = HomeVC()
    let registrationVC = RegistrationVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        logInEmailTxtField.delegate = self
        //        logInPasswrdTxtField.delegate = self
        //
    }
    
    //IBActions
    @IBAction func logInButtonPressed(_ sender: Any) {
        
        dismissKeyboard()
        print("entered")
        
        if logInEmailTxtField.text != "" && logInPasswrdTxtField.text != "" {
            print("successsful login")
        self.performSegue(withIdentifier: "toHomeVC", sender: nil)
            loginUser()
            
        } else {
            ProgressHUD.showError("Inavlid Email or Password!")
        }
        
    }
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        dismissKeyboard()
//        self.performSegue(withIdentifier: "toRegistrationVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        if segue.identifier == "toHomeVC" {
//            let destinationVC = segue.destination as! HomeVC
//        } else if segue.identifier == "toRegistrationVC" {
//            let destinationVC = segue.destination as! RegistrationVC
//        }
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
        
    }
    
    
}
