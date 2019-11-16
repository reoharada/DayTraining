//
//  SlotAppViewController.swift
//  dayTrainingApp
//
//  Created by REO HARADA on 2019/11/09.
//  Copyright © 2019 reo harada. All rights reserved.
//

import UIKit

class SlotAppViewController: UIViewController {
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var descText: UILabel!
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var thirdImage: UIImageView!
    @IBOutlet weak var oneMoreButton: UIButton!
    
    var timer1: Timer!
    var timer2: Timer!
    var timer3: Timer!
    
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        descText.isHidden = true
        firstImage.isHidden = true
        secondImage.isHidden = true
        thirdImage.isHidden = true
        oneMoreButton.isHidden = true
    }
    
    fileprivate func startTimer() {
        timer1 = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (ti) in
            let rand = arc4random()%7
            if rand == 0 {
                self.firstImage.image = UIImage(named: "slot_777")
            }
            else if rand == 1 {
                self.firstImage.image = UIImage(named: "slot_bell")
            }
            else if rand == 2 {
                self.firstImage.image = UIImage(named: "slot_blueberry")
            }
            else if rand == 3 {
                self.firstImage.image = UIImage(named: "slot_cherry")
            }
            else if rand == 4 {
                self.firstImage.image = UIImage(named: "slot_clover")
            }
            else if rand == 5 {
                self.firstImage.image = UIImage(named: "slot_star")
            }
            else {
                self.firstImage.image = UIImage(named: "slot_suika")
            }
        })
        
        timer2 = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { (ti) in
            let rand = arc4random()%7
            if rand == 0 {
                self.secondImage.image = UIImage(named: "slot_777")
            }
            else if rand == 1 {
                self.secondImage.image = UIImage(named: "slot_bell")
            }
            else if rand == 2 {
                self.secondImage.image = UIImage(named: "slot_blueberry")
            }
            else if rand == 3 {
                self.secondImage.image = UIImage(named: "slot_cherry")
            }
            else if rand == 4 {
                self.secondImage.image = UIImage(named: "slot_clover")
            }
            else if rand == 5 {
                self.secondImage.image = UIImage(named: "slot_star")
            }
            else {
                self.secondImage.image = UIImage(named: "slot_suika")
            }
        })
        
        timer3 = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { (ti) in
            let rand = arc4random()%7
            if rand == 0 {
                self.thirdImage.image = UIImage(named: "slot_777")
            }
            else if rand == 1 {
                self.thirdImage.image = UIImage(named: "slot_bell")
            }
            else if rand == 2 {
                self.thirdImage.image = UIImage(named: "slot_blueberry")
            }
            else if rand == 3 {
                self.thirdImage.image = UIImage(named: "slot_cherry")
            }
            else if rand == 4 {
                self.thirdImage.image = UIImage(named: "slot_clover")
            }
            else if rand == 5 {
                self.thirdImage.image = UIImage(named: "slot_star")
            }
            else {
                self.thirdImage.image = UIImage(named: "slot_suika")
            }
        })
    }
    
    @IBAction func tapStartButton(_ sender: Any) {
        descText.isHidden = false
        firstImage.isHidden = false
        secondImage.isHidden = false
        thirdImage.isHidden = false
        startButton.isHidden = true
        
        startTimer()
    }
    
    @IBAction func tapFirstImage(_ sender: Any) {
        self.timer1.invalidate()
        count += 1
        if count == 3 {
            oneMoreButton.isHidden = false
        }
    }
    
    @IBAction func tapSecondImage(_ sender: Any) {
        self.timer2.invalidate()
        count += 1
        if count == 3 {
            oneMoreButton.isHidden = false
        }
    }
    
    @IBAction func tapThirdImage(_ sender: Any) {
        self.timer3.invalidate()
        count += 1
        if count == 3 {
            oneMoreButton.isHidden = false
        }
    }
    
    @IBAction func tapOneMoreButton(_ sender: Any) {
        count = 0
        oneMoreButton.isHidden = true
        startTimer()
    }
}
