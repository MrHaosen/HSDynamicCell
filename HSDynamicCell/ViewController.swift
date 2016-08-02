//
//  ViewController.swift
//  HSDynamicCell
//
//  Created by ZhangHS on 16/8/2.
//  Copyright © 2016年 ZhangHS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    private let cellIdentfier = "HSCell"
    private let viewModel = HSViewModel()
    private var dataSource: [HSModel]!

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.tableView.registerNib(UINib(nibName: cellIdentfier, bundle: nil), forCellReuseIdentifier: cellIdentfier)
        dataSource = viewModel.transformForModel()
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let hsCell = tableView.dequeueReusableCellWithIdentifier(cellIdentfier, forIndexPath: indexPath) as? HSCell
        hsCell?.configurateForModel(dataSource[indexPath.row])
        return hsCell!;
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let hsCell = tableView.dequeueReusableCellWithIdentifier(cellIdentfier) as? HSCell
        var tempCell: HSCell
        hsCell != nil ? (tempCell = hsCell!) : (tempCell = HSCell())
        tempCell.contentLabel.text = dataSource[indexPath.row].content
        tempCell.layoutIfNeeded()
        return tempCell.contentView.systemLayoutSizeFittingSize(UILayoutFittingCompressedSize).height + 1
    }
}

