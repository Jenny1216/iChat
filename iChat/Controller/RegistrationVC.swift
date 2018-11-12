//
//  RegistrationVC.swift
//  iChat
//
//  Created by Jinisha Savani on 11/11/18.
//  Copyright © 2018 Jinisha Savani. All rights reserved.
//

import UIKit
import ProgressHUD

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
            
            registerUser()
            
        } else {
            ProgressHUD.showError("All fields are required!")
        }
    }
    
    func registerUser() {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
