//
//  CaptchaPodMain.swift
//  CaptchaPod
//
//  Created by Amr Hesham on 6/12/20.
//

import Foundation
import UIKit

extension UIViewController{
    public  func showCaptchaView(captchaView:UIView,textFieldPlaceHolder:String,buttonTitle:String,delegate:CaptchaDelegate){
        
        let bundle = Bundle(for: CaptchaView.self)
        let captchaVC = bundle.loadNibNamed("CaptchaView", owner: nil, options: nil)?.first  as! CaptchaView
        captchaVC.captchaTF.placeholder = textFieldPlaceHolder
        captchaVC.submitBtn.setTitle(buttonTitle, for: .normal)
        captchaVC.frame = captchaView.frame;
        captchaView.addSubview(captchaVC)
        captchaView.bringSubview(toFront: captchaVC)
        captchaVC.captchaDelegate = delegate
        
       
       
      
    }
}
