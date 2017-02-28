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
import FBSDKShareKit


class ViewController: UIViewController , FBSDKLoginButtonDelegate , UIImagePickerControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController.self
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = FBSDKLoginButton()
        
            view.addSubview(loginButton)
        
            loginButton.frame = CGRect( x: 16 , y: 100 ,  width: view.frame.width - 32 , height: 50)
            loginButton.delegate = self
        
        let content = FBSDKShareLinkContent()
            content.contentURL = URL(string: "https://www.facebook.com/aishwarya.rastogi.35")
        
        
        let picContent = FBSDKShareLinkContent()
           picContent.contentURL = URL(string:"https://scontent-fra3-1.xx.fbcdn.net/v/t1.0-9/12718235_724266654341982_4883171639540008380_n.jpg?oh=972f65b7b18cfa85e6e50634196c2ada&oe=5927C75B")
        
                let likeButton =  FBSDKLikeButton()
            likeButton.objectID = "https://www.facebook.com/aishwarya.rastogi.35"
            likeButton.frame = CGRect( x: 16 , y: 160 ,  width: view.frame.width - 32 , height: 50)
            view.addSubview(likeButton)
        
            let shareButton = FBSDKShareButton()
                shareButton.shareContent = content
                shareButton.frame = CGRect( x: 16 , y: 220 ,  width: view.frame.width - 32 , height: 50)
                view.addSubview(shareButton)
        
           // let photoShare = FBSDKSharePhotoContent()
        
        
    }
    
    
//    (void)imagePickerController:(UIImagePickerController *)picker
//    didFinishPickingMediaWithInfo:(NSDictionary *)info
//    {
//    UIImage *image = info[UIImagePickerControllerOriginalImage];
//    
//    FBSDKSharePhoto *photo = [[FBSDKSharePhoto alloc] init];
//    photo.image = image;
//    photo.userGenerated = YES;
//    FBSDKSharePhotoContent *content = [[FBSDKSharePhotoContent alloc] init];
//    content.photos = @[photo];
//    ...
//    }
//    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        
       // image = info[UIImagePickerControllerOriginalImage]
        
    }
    
    
    
    
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        
        print("  Did logged out of facebook")
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        
        if error != nil{
            print(error)
            return
        }
        
        print(" lOGGED IN SUCCESSFULLY")
    }
}
