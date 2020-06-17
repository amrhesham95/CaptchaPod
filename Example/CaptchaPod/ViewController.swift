//
//  ViewController.swift
//  CaptchaPod
//
//  Created by Amr Hesham on 06/12/2020.
//  Copyright (c) 2020 Amr Hesham. All rights reserved.
//

import UIKit
import CaptchaPod
class ViewController: UIViewController,CaptchaDelegate{
    func captchaDidMatch() {
        print("WOW")
    }
    
    func captchaDidFail() {
        print("")
    }
    
    @IBOutlet weak var captchaView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func viewDidAppear(_ animated: Bool) {
        self.showCaptchaView(captchaView: captchaView,delegate:self)
        
    }
}

