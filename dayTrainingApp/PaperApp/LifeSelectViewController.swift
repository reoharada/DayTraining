//
//  LifeSelectViewController.swift
//  dayTrainingApp
//
//  Created by REO HARADA on 2019/11/09.
//  Copyright © 2019 reo harada. All rights reserved.
//

import UIKit

class LifeSelectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tapLifeSelectButton(_ sender: Any) {
        let actionSheet = UIAlertController(title: "人生の選択", message: "将来どうする？", preferredStyle: .actionSheet)
        let select1 = UIAlertAction(title: "鬼退治にいく", style: .default) { (action) in
            self.performSegue(withIdentifier: "鬼退治へ", sender: nil)
        }
        let select2 = UIAlertAction(title: "チャラくなる", style: .default) { (action) in
            self.performSegue(withIdentifier: "チャラくなる", sender: nil)
        }
        let select3 = UIAlertAction(title: "グレる", style: .default) { (action) in
            self.performSegue(withIdentifier: "グレる", sender: nil)
        }
        let cancel = UIAlertAction(title: "キャンセル", style: .cancel, handler: nil)
        actionSheet.addAction(select1)
        actionSheet.addAction(select2)
        actionSheet.addAction(select3)
        actionSheet.addAction(cancel)
        present(actionSheet, animated: true, completion: nil)
    }

}
