//
//  ViewController.swift
//  MVVM-manster-Swift
//
//  Created by 新龙科技 on 2017/1/19.
//  Copyright © 2017年 新龙科技. All rights reserved.
//

import UIKit
import Alamofire
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var weibo: UITableView!
     var publicModelArray = Array<model>()
    override func viewDidLoad() {
        super.viewDidLoad()
        let VM = PublicWeiboViewModel()
        VM.setBlock(Return: { (success) in
            self.publicModelArray = success! as! Array<model>
            self.weibo.reloadData()
        }) { (error) in
            print(error as Any)
        }
        VM.fetchPublicWeiBo()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return publicModelArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = Bundle.main.loadNibNamed("FirstTableViewCell", owner: nil, options: nil)?.first as! FirstTableViewCell?
        let mod = publicModelArray[indexPath.row]
       cell?.mod = mod
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let VM = PublicWeiboViewModel()
        let mod = publicModelArray[indexPath.row]
        VM.weiboDetai(MoD: mod, VC: self)
    }
}

