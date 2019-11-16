//
//  PetAppViewController.swift
//  dayTrainingApp
//
//  Created by REO HARADA on 2019/11/09.
//  Copyright © 2019 reo harada. All rights reserved.
//

import UIKit

class PetAppViewController: UIViewController {

    @IBOutlet weak var dogImage: UIImageView!
    @IBOutlet weak var wanwanLabel: UILabel!
    @IBOutlet weak var kuunLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wanwanLabel.isHidden = true
        kuunLabel.isHidden = true
    }
    
    @IBAction func tapNose(_ sender: Any) {
        dogImage.image = UIImage(named: "sigh")
    }
    
    @IBAction func tapTail(_ sender: Any) {
        dogImage.image = UIImage(named: "angry")
    }
    
    @IBAction func tapBackground(_ sender: Any) {
        dogImage.image = UIImage(named: "normal")
    }
    
    @IBAction func swipeHead(_ sender: Any) {
        dogImage.image = UIImage(named: "smile")
    }
    
    @IBAction func swipeStomach(_ sender: Any) {
        wanwanLabel.isHidden = false
        let initPosX = wanwanLabel.frame.origin.x
        let screenWidth = UIScreen.main.bounds.size.width
        UIView.animate(withDuration: 1.0, animations: {
            self.wanwanLabel.frame.origin.x = screenWidth
        }) { (animated) in
            self.wanwanLabel.frame.origin.x = initPosX
            self.wanwanLabel.isHidden = true
        }
    }
    
    @IBAction func leftSwipeStomach(_ sender: Any) {
        kuunLabel.isHidden = false
        let initPos = kuunLabel.frame.origin
        UIView.animate(withDuration: 1.0, animations: {
            self.kuunLabel.frame.origin.x = 0
            self.kuunLabel.frame.origin.y = 0
        }) { (animated) in
            self.kuunLabel.frame.origin = initPos
            self.kuunLabel.isHidden = true
        }
    }
    
    @IBAction func tapCloseWindow(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
