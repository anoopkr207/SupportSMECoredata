//
//  ViewController.swift
//  SupportSMECoredata
//
//  Created by daffolapmac146 on 23/06/20.
//  Copyright © 2020 daffolapmac146. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func submitButton(_ sender: UIButton) {
        APIManager.sharedInstance.loginAPICall(email: emailTextfield.text!, password: passwordTextfield.text!)
        let dict = [Constant.DatabaseConstant.email: emailTextfield.text, Constant.DatabaseConstant.password: passwordTextfield.text]
        DatabaseHelper.shareInstance.save(object: dict as! [String: String])
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: Constant.storyboardConstant.storyboardIdentifier) as! ShowViewController
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}

