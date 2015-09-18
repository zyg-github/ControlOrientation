//
//  ViewController.swift
//  ControlOrientation
//
//  Created by zyg on 15/9/18.
//  Copyright © 2015年 zyg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func openNewVC(sender: UIButton) {
        
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("secondVC") as? SecondViewController {
            vc.orientation = ScreenOrientation.LandscapeLeft
            self.presentViewController(vc, animated: true, completion: nil)
        }
    }


}

