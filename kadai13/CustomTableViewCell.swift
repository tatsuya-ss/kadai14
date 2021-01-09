//
//  CustomTableViewCell.swift
//  kadai13
//
//  Created by 坂本龍哉 on 2021/01/09.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet var checkImageView: UIImageView!
    @IBOutlet var contentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
