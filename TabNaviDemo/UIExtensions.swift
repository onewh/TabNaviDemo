//
//  UIExtensions.swift
//  TabNaviDemo
//
//  Created by wanghao on 2019/3/3.
//  Copyright © 2019 wanghao. All rights reserved.
//


import UIKit

extension UIColor {
    convenience init(hexValue:Int,alpha:Float){
        self.init(red: CGFloat((hexValue & 0xFF0000) >> 16)/255.0, green: CGFloat((hexValue & 0xFF00) >> 8)/255.0, blue: CGFloat(hexValue & 0xFF)/255.0, alpha: CGFloat(alpha))
    }
    
    static let kcRed = UIColor(hexValue: 0xFF6666, alpha: 1.0)
    
    static let kcGreen = UIColor(hexValue: 0x99CC66, alpha: 1.0)
    
    static let kcBlue = UIColor(hexValue: 0x0099CC, alpha: 1.0)
}


public extension UIImage {
    public convenience init(color:UIColor,imageSize:CGSize = CGSize(width: 1.0, height: 1.0)){
        let rect = CGRect(x: 0.0, y: 0.0, width: imageSize.width, height: imageSize.height)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()!
        context.setFillColor(color.cgColor)
        context.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.init(cgImage: image!.cgImage!)
    }
}
