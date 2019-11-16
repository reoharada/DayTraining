//
//  BornViewController.swift
//  dayTrainingApp
//
//  Created by REO HARADA on 2019/11/09.
//  Copyright © 2019 reo harada. All rights reserved.
//

import UIKit

class BornViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapNextButton(_ sender: Any) {
        let alert = UIAlertController(title: "人生の洗濯", message: "桃太郎を育てますか？！", preferredStyle: .alert)
        let action = UIAlertAction(title: "はい", style: .default) { (action) in
            self.performSegue(withIdentifier: "桃太郎画面へ", sender: nil)
        }
        let cancel = UIAlertAction(title: "いいえ", style: .cancel) { (action) in
            self.performSegue(withIdentifier: "ゲームオーバー画面へ", sender: nil)
        }
        alert.addAction(action)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
}
