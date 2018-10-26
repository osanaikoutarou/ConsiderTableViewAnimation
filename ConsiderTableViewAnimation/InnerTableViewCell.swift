//
//  InnerTableViewCell.swift
//  ConsiderTableViewAnimation
//
//  Created by osanai on 2018/10/26.
//  Copyright © 2018年 osanai. All rights reserved.
//

import UIKit

class InnerTableViewCell: UITableViewCell {

    @IBOutlet weak var viewHeight: NSLayoutConstraint!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
