//
//  ViewController.swift
//  ConsiderTableViewAnimation
//
//  Created by osanai on 2018/10/26.
//  Copyright © 2018年 osanai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var rowNum = 15

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    @IBAction func tappedButton(_ sender: Any) {
        
        let cell = tableView.cellForRow(at: IndexPath(row: 0, section: 0)) as! HogeTableViewCell
        
        let prefereHeight = cell.innerTableViewContentHeight
        
//        tableView.beginUpdates()
        if cell.isOpen {
//            cell.close()
            cell.viewHeight.constant = 200
            tableView.updateWithAnimation {
                cell.tableViewHeight.constant = 200
            }
            cell.isOpen = false
        }
        else {
            cell.viewHeight.constant = cell.innerTableViewContentHeight
            cell.tableViewHeight.constant = cell.innerTableViewContentHeight
            tableView.updateWithAnimation(completion: nil)
            cell.isOpen = true
        }
        
        
//        tableView.beginUpdates()
//        cell.viewHeight.constant = 200
//        tableView.endUpdates()

//        cell.startOpenAnimation()
        
        
//        for i in 5...10 {
//            rowNum = i + 1
//            tableView.beginUpdates()
//            let a = [IndexPath(row: i, section: 0),
//                     ]
//
//            tableView.insertRows(at: a, with: .top)
//            tableView.endUpdates()
//
//        }

        //        rowNum = 10
//        tableView.beginUpdates()
//        let a = [IndexPath(row: 5, section: 0),
//                 IndexPath(row: 6, section: 0),
//                 IndexPath(row: 7, section: 0),
//                 IndexPath(row: 8, section: 0),
//                 IndexPath(row: 9, section: 0),
//        ]
//
//        tableView.insertRows(at: a, with: .right)
//        tableView.endUpdates()

    }
    
}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HogeTableViewCell", for: indexPath) as! HogeTableViewCell
//        cell.backgroundColor = UIColor(red: CGFloat(0.5 + 0.02 * Double(indexPath.row)),
//                                       green: CGFloat(0.3 + 0.07 * Double(indexPath.row)),
//                                       blue: CGFloat(0.6 - 0.03 * Double(indexPath.row)),
//                                       alpha: 1)
        return cell
    }
    
}


