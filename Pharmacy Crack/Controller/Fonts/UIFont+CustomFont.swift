//
//  UIFont+CustomFont.swift
//  Pharmacy Crack
//
//  Created by Nicky Singh on 19/03/21.
//  Copyright © 2021 agicent. All rights reserved.
//


import Foundation

import UIKit

let IS_IPAD = (UI_USER_INTERFACE_IDIOM() == .pad)
let IS_IPHONE = (UI_USER_INTERFACE_IDIOM() == .phone)
let IS_RETINA = (UIScreen.main.scale >= 2.0)
let SCREEN_WIDTH = (UIScreen.main.bounds.size.width)
let SCREEN_HEIGHT = (UIScreen.main.bounds.size.height)
let SCREEN_MAX_LENGTH = (max(SCREEN_WIDTH, SCREEN_HEIGHT))
let SCREEN_MIN_LENGTH = (min(SCREEN_WIDTH, SCREEN_HEIGHT))
let IS_IPAD_PRO_1366 = (IS_IPAD && max(SCREEN_WIDTH,SCREEN_HEIGHT) == 1366.0)
let IS_IPAD_PRO_1112 = (IS_IPAD && max(SCREEN_WIDTH,SCREEN_HEIGHT) == 1112.0)
let IS_IPAD_PRO_1024 = (IS_IPAD && max(SCREEN_WIDTH,SCREEN_HEIGHT) == 1024.0)



let IS_IPHONE_4_OR_LESS = (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)
let IS_IPHONE_5         = (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)
let IS_IPHONE_6         = (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)
let IS_IPHONE_6P         = (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)
let IS_IPHONE_X         = (IS_IPHONE && SCREEN_MAX_LENGTH == 812.0)
let IS_IPHONE_XSMax     = (IS_IPHONE && SCREEN_MAX_LENGTH == 896.0)

private func calculateSize(enter size : CGFloat) -> CGFloat {
    var sizeOfFont : CGFloat?
    
    if IS_IPHONE_4_OR_LESS {
        sizeOfFont = size - 2.0
    }
    if IS_IPHONE_5 {
        sizeOfFont = size + 1.0
    }
    if IS_IPHONE_6 {
        sizeOfFont = size + 3.0
    }
    if IS_IPHONE_6P {
        sizeOfFont = size + 3.0
    }
    if IS_IPHONE_X {
        sizeOfFont = size + 3.0
    }
    if IS_IPHONE_XSMax {
        sizeOfFont = size + 4.0
    }
        
    if IS_IPAD_PRO_1024{
        sizeOfFont = size + 12.0;
    }else if (IS_IPAD_PRO_1112){
        sizeOfFont = size + 10.0;
    }else if (IS_IPAD_PRO_1366){
        sizeOfFont = size + 20.0;
    }
    
    if IS_IPHONE, sizeOfFont == nil{
         sizeOfFont = size + 4.0
    }
    if IS_IPAD, sizeOfFont == nil{
         sizeOfFont = size + 10.0
    }
    
    return sizeOfFont!
}



extension UIFont {
    
    class func  BritannicBoldFontWithSize(size: CGFloat) -> UIFont {
        return UIFont(name: "BritannicBold", size: calculateSize(enter: size))!
    }
    
    class func  manropeSemiBold(size: CGFloat) -> UIFont {
        return UIFont(name: "Manrope-SemiBold", size: calculateSize(enter: size))!
    }
    
    class func  manropeBoldWithSize(size: CGFloat) -> UIFont {
        return UIFont(name: "Manrope-Bold", size: calculateSize(enter: size))!
    }
    
    class func  bebasNeueBoldWithSize(size: CGFloat) -> UIFont {
        return UIFont(name: "BebasNeueBold", size: calculateSize(enter: size))!
    }
}

