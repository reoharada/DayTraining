//
//  ViewController.swift
//  dayTrainingApp
//
//  Created by REO HARADA on 2019/11/09.
//  Copyright © 2019 reo harada. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var カリキュラム = [
        "告白アプリ",
        "おみくじアプリ",
        "ペットアプリ",
        "スロットアプリ",
        "おいかけっこアプリ",
        "紙芝居アプリ",
        "辞書アプリ",
        "ニュースアプリ",
        "チャットアプリ",
        "メモアプリ",
        "電子書籍",
        "真のニュースアプリ",
        "クラウドメモアプリ",
        "クラウドアルバムアプリ",
        "SNSアプリ",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return カリキュラム.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "第\(indexPath.row+1)回"+カリキュラム[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = ViewControllers.init(rawValue: カリキュラム[indexPath.row])?.viewController {
            if indexPath.row == 2 {
                vc.modalPresentationStyle = .fullScreen
            }
            present(vc, animated: true, completion: nil)
        }
    }

}

enum ViewControllers: String {
    case love = "告白アプリ"
    case lucky = "おみくじアプリ"
    case pet = "ペットアプリ"
    case slot = "スロットアプリ"
    case chase = "おいかけっこアプリ"
    case paper = "紙芝居アプリ"
    case dictionary = "辞書アプリ"
    
    private var storyboadID: String {
        switch self {
        case .love: return "LoveAppStoryboard"
        case .lucky: return "LuckyAppStoryboard"
        case .pet: return "PetAppStoryboard"
        case .slot: return "SlotAppStoryboard"
        case .chase: return "ChaseAppStoryboard"
        case .paper: return "PaperAppStoryboard"
        case .dictionary: return "DictionaryAppStoryboard"
        }
    }
    private var viewControllerID: String {
        switch self {
        case .love: return "LoveAppViewController"
        case .lucky: return "LuckyAppViewController"
        case .pet: return "PetAppViewController"
        case .slot: return "SlotAppViewController"
        case .chase: return "ChaseAppViewController"
        case .paper: return "PaperAppViewController"
        case .dictionary: return "DictionaryAppViewController"
        }
    }
    var viewController: UIViewController? {
        let st = UIStoryboard(name: self.storyboadID, bundle: nil)
        return st.instantiateViewController(identifier: self.viewControllerID)
    }
}

