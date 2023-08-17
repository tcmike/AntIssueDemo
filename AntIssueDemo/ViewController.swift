//
//  ViewController.swift
//  AntIssueDemo
//
//  Created by MIKHAIL CHEPELEV on 17.08.2023.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    let config: WKWebViewConfiguration = {
        let config = WKWebViewConfiguration()
        config.preferences.isTextInteractionEnabled = false
        return config
    }()
    lazy var webView = WKWebView(frame: .zero, configuration: config)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(webView)
        
        if let url = URL(string: "https://ant.design/components/input") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        webView.frame = view.bounds
    }

}

