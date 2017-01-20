//
//  FirstViewController.swift
//  MVVM-manster-Swift
//
//  Created by 新龙科技 on 2017/1/20.
//  Copyright © 2017年 新龙科技. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    var MOD = model()
    
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = MOD.name
    }
    
    @IBAction func back(_ sender: UITapGestureRecognizer) {
        self.dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
