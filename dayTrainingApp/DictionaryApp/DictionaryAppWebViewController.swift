//
//  DictionaryAppWebViewController.swift
//  dayTrainingApp
//
//  Created by REO HARADA on 2019/11/09.
//  Copyright © 2019 reo harada. All rights reserved.
//

import UIKit
import WebKit

class DictionaryAppWebViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    var word: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let urlStr = "https://ja.wikipedia.org/wiki/\(word.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)"
        if let url = URL(string: urlStr) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }

}
