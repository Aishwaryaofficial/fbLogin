//
//  ViewController.swift
//  facebookLogin
//
//  Created by Appinventiv on 27/02/17.
//  Copyright © 2017 Appinventiv. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController , FBSDKLoginButtonDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let login = FBSDKLoginButton()
        login.center = self.view.center
       // login.frame = CGRect(x: 16, y: 15, width: view.frame.width - 32, height: 50)
        self.view.addSubview(login)
      
        
    }
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if error != nil{
          print( error)
        }
        else {
            print("successful login")
        }
    }
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("logrd out successfully")
    }

    


}

