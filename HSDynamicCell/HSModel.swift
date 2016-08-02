//
//  HSModel.swift
//  HSDynamicCell
//
//  Created by ZhangHS on 16/8/2.
//  Copyright © 2016年 ZhangHS. All rights reserved.
//

import UIKit

class HSModel: NSObject {

    var title: String!
    var content: String!
    var date: String!

    init(dataSource: [String: AnyObject]) {
        super.init()
        title   = dataSource["title"] as? String
        content = dataSource["content"] as? String
        date    = dataSource["date"] as? String
    }
}
