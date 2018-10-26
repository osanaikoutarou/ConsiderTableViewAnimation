//
//  HogeTableViewCell.swift
//  ConsiderTableViewAnimation
//
//  Created by osanai on 2018/10/26.
//  Copyright © 2018年 osanai. All rights reserved.
//

import UIKit

class HogeTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var viewHeight: NSLayoutConstraint!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    var isOpen = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    var innerTableViewContentHeight:CGFloat {
        tableView.layoutIfNeeded()
        return tableView.contentSize.height
    }
    
    func open() {
        viewHeight.constant = innerTableViewContentHeight
        tableViewHeight.constant = innerTableViewContentHeight
        isOpen = true
    }
    func close() {
        viewHeight.constant = 150
        tableViewHeight.constant = 150
        isOpen = false
    }
}

extension HogeTableViewCell: UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let innnerCell = tableView.dequeueReusableCell(withIdentifier: "InnerTableViewCell", for: indexPath) as! InnerTableViewCell
        innnerCell.label.text = "\(indexPath.section) - \(indexPath.row)"
        return innnerCell
    }
}

