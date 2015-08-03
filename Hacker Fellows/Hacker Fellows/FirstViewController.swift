//
//  FirstViewController.swift
//  Hacker Fellows
//
//  Created by Hacker Fellows on 7/28/15.
//  Copyright (c) 2015 Grand Circus. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL(string: "http://www.hackerfellows.com/")
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

