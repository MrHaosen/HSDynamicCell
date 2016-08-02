//
//  HSCell.swift
//  HSDynamicCell
//
//  Created by ZhangHS on 16/8/2.
//  Copyright © 2016年 ZhangHS. All rights reserved.
//

import UIKit

class HSCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func layoutSubviews() {
        self.contentView.setNeedsLayout()
        self.contentView.layoutIfNeeded()
        self.contentLabel.preferredMaxLayoutWidth = CGRectGetWidth(self.contentLabel.frame)
    }

    func configurateForModel(model: HSModel) {
        self.titleLabel.text   = model.title
        self.contentLabel.text = model.content
        self.dateLabel.text    = model.date
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
