//
//  UITableView+Utility.swift
//  ConsiderTableViewAnimation
//
//  Created by osanai on 2018/10/26.
//  Copyright © 2018年 osanai. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    func updateWithAnimation(completion:(() -> ())?) {
        CATransaction.begin()
        self.beginUpdates()
        CATransaction.setCompletionBlock {
            if let completion = completion {
                completion()
            }
        }
        self.endUpdates()
        CATransaction.commit()
    }
}
