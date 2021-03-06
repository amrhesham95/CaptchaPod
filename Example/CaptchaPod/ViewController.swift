//
//  ViewController.swift
//  CaptchaPod
//
//  Created by Amr Hesham on 06/12/2020.
//  Copyright (c) 2020 Amr Hesham. All rights reserved.
//

// ****** THIS IS AN EXAMPLE OF HOW TO USE THE POD *******

/*
- make an UIVIEW in your nib file or story board
- drag an outlet of it to your controller
- make your controller confrom the CaptchaDelegate
- confrom the two methods that handles the cases of matching captcha or mismatching
*/
import UIKit
import CaptchaPod
class ViewController: UIViewController,CaptchaDelegate{
    func captchaDidMatch() {
        let ac = UIAlertController(title: "Verified!", message: "you have entered the right captcha!", preferredStyle: .alert)
         ac.addAction(UIAlertAction(title: "Ok", style: .cancel))
        self.show(ac, sender: self)
    }
    
    func captchaDidFail() {
        let ac = UIAlertController(title: "Failed!", message: "you have entered wrong captcha!", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Ok", style: .cancel))
        self.show(ac, sender: self)
    }
    
    @IBOutlet weak var captchaView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func viewDidAppear(_ animated: Bool) {
        self.showCaptchaView(captchaView: captchaView, textFieldPlaceHolder: "Enter captcha here", buttonTitle: "SUBMIT", delegate: self)
        
    }
}

