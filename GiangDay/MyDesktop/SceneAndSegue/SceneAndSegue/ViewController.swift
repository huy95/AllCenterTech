//
//  ViewController.swift
//  SceneAndSegue
//
//  Created by Quynh on 3/24/20.
//  Copyright © 2020 Quynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        UIView.animated
    }

    @IBAction func unwindFromScreen2(_ sender: UIStoryboardSegue){
        print("Unwind")
    }
}
