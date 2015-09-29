//
//  IndividualRegistrationViewController.swift
//  Osearch
//
//  Created by Bharath Vanapala on 25/09/15.
//  Copyright © 2015 Bharath Vanapala. All rights reserved.
//

import Foundation
import UIKit
import Parse



class IndividualRegistrationViewController: UIViewController, UITextFieldDelegate {
   
    @IBOutlet weak var nameTextFeild: UITextField!
    
    @IBOutlet weak var emailTextFeild: UITextField!
    
    @IBOutlet weak var dateOfBirthTextFeild: UITextField!
    
    @IBOutlet weak var aadharTextFeild: UITextField!
    
    @IBOutlet weak var addressTextFeild: UITextField!
    
    @IBAction func closeButtonTapped(sender: AnyObject) {
        self  .dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextFeild.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func registertapped(sender: AnyObject) {
        let user = PFUser()
        user.username = nameTextFeild.text
        user.password = ""
        user.email = emailTextFeild.text
        user["DOB"] = emailTextFeild.text
        user["AADHAR"] = aadharTextFeild.text
        user["ADDRESS"] = addressTextFeild.text
        
        user.signUpInBackgroundWithBlock { (succeeded, error) -> Void in
            if error == nil {
                print("success")
//                let alert = UIAlertController(title: "Successful", message: "User registation successful", preferredStyle: UIAlertControllerStyle.Alert)
//                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
//                self.presentViewController(alert, animated: true, completion: nil)
                
//                let HomeVC = HomeViewController()
////                self.presentViewController(HomeVC, animated: true, completion: nil)
//                
//                var vc = self.storyboard?.instantiateViewControllerWithIdentifier("HomeViewController") as
//                self.presentViewController(vc, animated: true, completion: nil)

                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewControllerWithIdentifier("HomeViewController") 
                self.presentViewController(vc, animated: true, completion: nil)
                
                
                
                //vc : ViewController =  ViewController(nibName: "ViewController", bundle: nil) //change this to your class name
                
               //self.presentViewController(vc, animated: true, completion: nil)
                
            } else {
                //let alert = UIAlertView()
                print("\(error)");
                let alert = UIAlertController(title: "Alert", message:"\(error)" , preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
                
                // Show the errorString somewhere and let the user try again.
            }
        }
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }// called when 'return' key pressed. return NO to ignore.

}
