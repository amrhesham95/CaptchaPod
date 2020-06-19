//
//  CaptchaDelegate.swift
//  CaptchaPod
//
//  Created by Amr Hesham on 6/17/20.
//

import Foundation
public protocol CaptchaDelegate {
    func captchaDidMatch()
    func captchaDidFail()
}
