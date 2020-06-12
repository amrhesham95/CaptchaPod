//
//  ViewController.swift
//  CaptchaPod
//
//  Created by Amr Hesham on 06/12/2020.
//  Copyright (c) 2020 Amr Hesham. All rights reserved.
//

import UIKit
import CaptchaPod
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func viewDidAppear(_ animated: Bool) {
        self.showCaptchaView(vc: self)
    }
}

