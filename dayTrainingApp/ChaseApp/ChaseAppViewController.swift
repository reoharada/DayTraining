//
//  ChaseAppViewController.swift
//  dayTrainingApp
//
//  Created by REO HARADA on 2019/11/09.
//  Copyright © 2019 reo harada. All rights reserved.
//

import UIKit

class ChaseAppViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var catchLabel: UILabel!
    @IBOutlet weak var oneMoreButton: UIButton!
    @IBOutlet weak var chaseImage: UIImageView!
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        catchLabel.isHidden = true
        oneMoreButton.isHidden = true
        chaseImage.isHidden = true
    }

    fileprivate func moveRight() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .allowUserInteraction, animations: {
            if self.chaseImage.frame.origin.x < UIScreen.main.bounds.size.width - 100 {
                self.chaseImage.frame.origin.x += 50
            }
        }, completion: nil)
    }
    
    fileprivate func moveLeft() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .allowUserInteraction, animations: {
            if self.chaseImage.frame.origin.x > 0 {
                self.chaseImage.frame.origin.x -= 50
            }
        }, completion: nil)
    }
    
    fileprivate func moveUp() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .allowUserInteraction, animations: {
            if self.chaseImage.frame.origin.y > 0 {
                self.chaseImage.frame.origin.y -= 50
            }
        }, completion: nil)
    }
    
    fileprivate func moveDown() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .allowUserInteraction, animations: {
            if self.chaseImage.frame.origin.y < UIScreen.main.bounds.size.height - 100 {
                self.chaseImage.frame.origin.y += 50
            }
        }, completion: nil)
    }
    
    fileprivate func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true, block: { (ti) in
            let rand = arc4random()%4
            if rand == 0 {
                self.moveRight()
            }
            else if rand == 1 {
                self.moveLeft()
            }
            else if rand == 2 {
                self.moveUp()
            }
            else {
                self.moveDown()
            }
        })
    }
    
    @IBAction func tapStartButton(_ sender: Any) {
        startButton.isHidden = true
        chaseImage.isHidden = false
        startTimer()
    }
    
    @IBAction func tapOneMoreButton(_ sender: Any) {
        startTimer()
        oneMoreButton.isHidden = true
        catchLabel.isHidden = true
    }
    
    @IBAction func tapImageView(_ sender: Any) {
        oneMoreButton.isHidden = false
        catchLabel.isHidden = false
        timer.invalidate()
    }
    
    @IBAction func tapCloseWindow(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
