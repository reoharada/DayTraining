//
//  LoveAppViewController.swift
//  dayTrainingApp
//
//  Created by REO HARADA on 2019/11/09.
//  Copyright © 2019 reo harada. All rights reserved.
//

import UIKit

class LoveAppViewController: UIViewController {

    @IBOutlet weak var loveText: UILabel!
    @IBOutlet weak var loveImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loveText.isHidden = true
        loveImage.isHidden = true
    }
    

    @IBAction func tapButton(_ sender: Any) {
        loveText.isHidden = false
        loveImage.isHidden = false
    }

}
