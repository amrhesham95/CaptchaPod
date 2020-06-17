//
//  CaptchaViewController.swift
//  CaptchaPod
//
//  Created by Amr Hesham on 6/12/20.
//

import Foundation
public class CaptchaView: UIView {
    var captchaDelegate:CaptchaDelegate?
    @IBOutlet weak var captchaTF: UITextField!
    @IBOutlet weak var captchaLabel: UILabel!
    @IBOutlet weak var retryBtn: UIButton!
    
    
    @IBOutlet weak var submitBtn: UIButton!
    public override func awakeFromNib() {
        generateCapatcha()
    }
    func generateCapatcha(){
        var obliq:UInt32?
        var kern:Int?
        var attributeString:NSMutableAttributedString = NSMutableAttributedString.init(string:"")
        var i1,i2,i3,i4,i5:Int?
        let ar1 = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
        var capatchaString:String?
        i1 = Int(arc4random()) % ar1.count
        i2 = Int(arc4random()) % ar1.count
        i3 = Int(arc4random()) % ar1.count
        i4 = Int(arc4random()) % ar1.count
        i5 = Int(arc4random()) % ar1.count
        
        capatchaString = ar1[i1!] + ar1[i2!] + ar1[i3!] + ar1[i4!] + ar1[i5!]
        
      attributeString = NSMutableAttributedString.init(string: capatchaString!)
       
        attributeString.addAttribute(.strikethroughStyle, value:1, range: NSRange(location: 0, length: capatchaString!.count))
        
        
         attributeString.addAttribute(.expansion, value:-0.5, range: NSRange(location: 0, length: capatchaString!.count))
        
         attributeString.addAttribute(.verticalGlyphForm, value:0.5, range: NSRange(location: 0, length: capatchaString!.count))
        
        obliq = (arc4random() % 256 / 256) - (arc4random() % 256 / 256)
        attributeString.addAttribute(.obliqueness, value: -Int(obliq!), range: NSRange(location: 0, length: capatchaString!.count)) // -1 to 1
        
        kern = ( Int((arc4random() % 256 / 256)) * -5 )
        attributeString.addAttribute(.kern, value: Int(kern!), range: NSRange(location: 0, length: capatchaString!.count))
       
        attributeString.addAttribute(.ligature, value: 2, range: NSRange(location: 0, length: capatchaString!.count))
        
        attributeString.addAttribute(.font, value:  UIFont.boldSystemFont(ofSize: 30.0), range: NSRange(location: 0, length: capatchaString!.count))
       
        captchaLabel.attributedText = attributeString
        
       
    }
    @IBAction func retryBtnAction(_ sender: UIButton) {
        
        captchaTF.text = ""
        generateCapatcha()
              
    }
    @IBAction func submitBtnAction(_ sender: UIButton) {
        if(captchaTF.text == captchaLabel.text){
            captchaTF.text = ""
            generateCapatcha()
            captchaDelegate?.captchaDidMatch()
        }else{
            captchaTF.text = ""
            generateCapatcha()
            captchaDelegate?.captchaDidFail()
        }
        
    }

}
