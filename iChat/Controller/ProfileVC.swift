//
//  ProfileVC.swift
//  iChat
//
//  Created by Jinisha Savani on 11/12/18.
//  Copyright © 2018 Jinisha Savani. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: nil)
    }
}
