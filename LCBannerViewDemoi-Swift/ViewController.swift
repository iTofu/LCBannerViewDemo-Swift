//
//  ViewController.swift
//  LCBannerViewDemoi-Swift
//
//  Created by 苑金仓 on 16/7/22.
//  Copyright © 2016年 Leo（http://LeoDev.me）. All rights reserved.
//

import UIKit
import LCBannerView

class ViewController: UIViewController, LCBannerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let bannerView = LCBannerView.init(frame: CGRectMake(0, 0, 200, 100), delegate: self, imageName: "AddImageByYouself", count: 3, timeInterval: 3, currentPageIndicatorTintColor: UIColor.whiteColor(), pageIndicatorTintColor: UIColor.grayColor())
        
        view.addSubview(bannerView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

