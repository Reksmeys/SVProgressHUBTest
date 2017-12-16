//
//  ViewController.swift
//  SVProgressHUBTest
//
//  Created by Raksmey on 12/16/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit
import SVProgressHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        
    }


    @IBAction func showButton(_ sender: Any) {
        SVProgressHUD.show()
    }
    
  
    @IBAction func showWithStatusButton(_ sender: Any) {
        SVProgressHUD.show(withStatus: "Loading...")
    }
    
    @IBAction func showWithProgress(_ sender: Any) {
        SVProgressHUD.showProgress(2)
    }
    
    @IBAction func showInfoWithStatusButton(_ sender: Any) {
        SVProgressHUD.showInfo(withStatus: "Warning")
    }
    
    
    @IBAction func showSuccessWithStatus(_ sender: Any) {
        SVProgressHUD.showSuccess(withStatus: "Install Successfully!")
    }
    
    @IBAction func showErrorWithStatus(_ sender: Any) {
        SVProgressHUD.showError(withStatus: "Failed to install!")
    }
    
    
    @IBAction func dismissButton(_ sender: Any) {
      //  SVProgressHUD.dismiss(withDelay: 3)
        SVProgressHUD.dismiss()
    }
    
   
    @IBOutlet weak var style: UISegmentedControl!
    
    
    
    @IBAction func styleSegment(_ sender: Any) {
        print(style.numberOfSegments)
        if style.selectedSegmentIndex == 0 {
            SVProgressHUD.setDefaultStyle(.dark)
        }else if style.selectedSegmentIndex == 1 {
            SVProgressHUD.setDefaultStyle(.light)
        }
        else if style.selectedSegmentIndex == 2 {
            SVProgressHUD.setDefaultAnimationType(.native)
        }
        else if style.selectedSegmentIndex == 3 {
            SVProgressHUD.setDefaultAnimationType(.flat)
        }
    }
    
    
    
    
}

