//
//  LuckyAppViewController.swift
//  dayTrainingApp
//
//  Created by REO HARADA on 2019/11/09.
//  Copyright © 2019 reo harada. All rights reserved.
//

import UIKit

class LuckyAppViewController: UIViewController {

    @IBOutlet weak var luckyText: UILabel!
    @IBOutlet weak var luckyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        luckyText.isHidden = true
        luckyImage.isHidden = true
    }

    @IBAction func tapButton(_ sender: Any) {
        luckyText.isHidden = false
        luckyImage.isHidden = false
        let rand = arc4random() % 7
        if rand == 0 {
            luckyText.text = "大吉"
            luckyImage.image = UIImage(named: "大吉")
        }
        else if rand == 1 {
            luckyText.text = "中吉"
            luckyImage.image = UIImage(named: "中吉")
        }
        else if rand == 2 {
            luckyText.text = "吉"
            luckyImage.image = UIImage(named: "吉")
        }
        else if rand == 3 {
            luckyText.text = "小吉"
            luckyImage.image = UIImage(named: "小吉")
        }
        else if rand == 4 {
            luckyText.text = "末吉"
            luckyImage.image = UIImage(named: "末吉")
        }
        else if rand == 5 {
            luckyText.text = "凶"
            luckyImage.image = UIImage(named: "凶")
        }
        else {
            luckyText.text = "大凶"
            luckyImage.image = UIImage(named: "大凶")
        }
    }
    
    
}
