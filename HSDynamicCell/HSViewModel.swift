//
//  HSViewModel.swift
//  HSDynamicCell
//
//  Created by ZhangHS on 16/8/2.
//  Copyright © 2016年 ZhangHS. All rights reserved.
//

import UIKit

class HSViewModel: NSObject {

    struct Property {
        static let title          = "title"
        static let content        = "content"
        static let date           = "date"
    }
    
    private let data: [[String: AnyObject]] = [[Property.title: "titlt1", Property.content: "你好", Property.date: "2016.8.2"],
                      [Property.title: "titlt2", Property.content: "你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好", Property.date: "2016.8.2"],
                      [Property.title: "titlt3", Property.content: "你好你好你好你好你好", Property.date: "2016.8.2"],
                      [Property.title: "titlt4", Property.content: "你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好", Property.date: "2016.8.2"],
                      [Property.title: "titlt5", Property.content: "你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好", Property.date: "2016.8.2"]]

    
    func transformForModel() -> [HSModel]{
        var dataSource = [HSModel]()
        data.forEach { dataDic in
            let hsModel = HSModel(dataSource: dataDic)
            dataSource.append(hsModel)
        }
        return dataSource
    }

}
