//
//  ViewController.swift
//  LCBannerViewDemo-Swift
//
//  Created by 苑金仓 on 16/7/27.
//  Copyright © 2016年 Leo（http://LeoDev.me）. All rights reserved.
//

import UIKit
import LCBannerView
import Alamofire

class ViewController: UIViewController, LCBannerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Get data
        Alamofire.request(.GET, "http://api.androidhive.info/json/movies.json")
                 .responseJSON { (response) in
                    
                    if let json = response.result.value {
                        print("JSON: \(json)")
                        
                        // Add imageURL to array
                        var imageURLs: [String] = []
                        for movie in json as! NSArray {
                            let imageURL = (movie as! NSDictionary).objectForKey("image")! as! String
                            
                            imageURLs.append(imageURL)
                        }
                        
                        print("imageURLs: \(imageURLs)")
                        
                        // Initialize bannerView
                        let bannerView = LCBannerView.init(frame: CGRectMake(0, 20.0, 300.0, 300.0), delegate: self, imageURLs: imageURLs, placeholderImageName: "placeHolder", timeInterval: 2, currentPageIndicatorTintColor: UIColor.redColor(), pageIndicatorTintColor: UIColor.yellowColor());
                        
                        self.view.addSubview(bannerView)
                    }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

