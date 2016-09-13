//
//  WZXSlider.swift
//  WZXQR
//
//  Created by WzxJiang on 16/9/13.
//  Copyright © 2016年 WzxJiang. All rights reserved.
//

import UIKit

extension UISlider {
    
    // Set minimumTrackImageView.contentMode = .left
    open override func addSubview(_ view: UIView) {
        super.addSubview(view)
        if view.isKind(of: UIImageView.classForCoder()) {
            view.contentMode = .left
        }
    }
    
    open func wzx_setMinimumTrackImage(startColor: UIColor, endColor: UIColor, startPoint: CGPoint, endPoint: CGPoint) -> Void {
        //TODO: - change height
        let size = CGSize.init(width: self.bounds.width, height: 2)
    
        let gradient = CIFilter(name: "CILinearGradient", withInputParameters: [:])
        
        guard gradient != nil else {
            return
        }
        
        gradient?.setDefaults()
        
        let startVector = CIVector(x: startPoint.x*size.width, y: startPoint.y*size.height)
        let endVector   = CIVector(x: endPoint.x*size.width,   y: endPoint.y*size.height)
        
        gradient?.setValue(CIColor.init(color: startColor), forKey: "inputColor0")
        gradient?.setValue(CIColor.init(color: endColor), forKey: "inputColor1")
        gradient?.setValue(startVector, forKey: "inputPoint0")
        gradient?.setValue(endVector, forKey: "inputPoint1")
        
        let ciImage = gradient?.outputImage
        
        let context = CIContext.init(options: nil)
        
        let resultCGImage = context.createCGImage(ciImage!, from: CGRect.init(origin: CGPoint.zero, size: size))
        
        let image = UIImage.init(cgImage: resultCGImage!)
        
        self.setMinimumTrackImage(image, for: UIControlState.normal)
        self.setMinimumTrackImage(image, for: UIControlState.highlighted)
    }
}
