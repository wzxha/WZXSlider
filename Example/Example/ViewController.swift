//
//  ViewController.swift
//  Example
//
//  Created by WzxJiang on 16/9/13.
//  Copyright © 2016年 WzxJiang. All rights reserved.
//

import UIKit
import WZXSlider
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let slider: UISlider = UISlider.init()
        slider.center = self.view.center
        slider.bounds = CGRect.init(origin: CGPoint.zero, size: CGSize.init(width: 300, height: 50))
        slider.wzx_setMinimumTrackImage(startColor: UIColor.red,
                                        endColor: UIColor.blue,
                                        startPoint: CGPoint.init(x: 0, y: 0),
                                        endPoint: CGPoint.init(x: 1, y: 1))
        
        
        self.view.addSubview(slider)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

