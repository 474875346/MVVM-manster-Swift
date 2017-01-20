//
//  FirstTableViewCell.swift
//  MVVM-manster-Swift
//
//  Created by 新龙科技 on 2017/1/19.
//  Copyright © 2017年 新龙科技. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    var mod = model(){
        didSet{
            name.text = mod.name
        }
    }
    
    
    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
