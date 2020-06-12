//
//  CaptchaPodMain.swift
//  CaptchaPod
//
//  Created by Amr Hesham on 6/12/20.
//

import Foundation
import UIKit

extension UIViewController{
    public  func showCaptchaView(vc:UIViewController){
        
        let bundle = Bundle(for: CaptchaView.self)
        let captchaVC = bundle.loadNibNamed("CaptchaView", owner: CaptchaView.self, options: nil)?.first  as! CaptchaView
         captchaVC.frame = vc.view.frame;
        vc.view.addSubview(captchaVC)
        vc.view.bringSubview(toFront: captchaVC)
        
        
       
       
      
    }
}
