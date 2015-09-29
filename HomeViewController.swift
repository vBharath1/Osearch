//
//  HomeViewController.swift
//  Osearch
//
//  Created by Bharath Vanapala on 28/09/15.
//  Copyright © 2015 Bharath Vanapala. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    @IBAction func closeButtonAction(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
      //  self.view.backgroundColor = UIColor .redColor()
        
    }
}
