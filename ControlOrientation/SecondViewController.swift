//
//  SecondViewController.swift
//  ControlOrientation
//
//  Created by zyg on 15/9/16.
//  Copyright © 2015年 zyg. All rights reserved.
//

import UIKit

enum ScreenOrientation {
    case Portrait, LandscapeLeft
}

class SecondViewController: UIViewController {
    
    var orientation = ScreenOrientation.Portrait

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func dismissSelfVC(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if self.orientation == ScreenOrientation.LandscapeLeft {
            return UIInterfaceOrientationMask.LandscapeLeft
        
        }else{
            return UIInterfaceOrientationMask.Portrait
        }

        
    }


}
