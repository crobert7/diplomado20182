//
//  WebViewContoller.swift
//  WorldTrotter
//
//  Created by Roberto Garcia on 6/18/18.
//  Copyright © 2018 Roberto Garcia. All rights reserved.
//

import UIKit
import WebKit

class WebViewContoller: UIViewController {
    
    var webView: WKWebView!
    
    override func loadView() {
        
        webView = WKWebView()
        let myURL = URL(string: "https://www.youtube.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        view = webView
        
    }
    
}
