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


    func configure(isChecked: Bool, name: String) {
        if isChecked == true {
            checkImageView.image = UIImage(named: "check")
        } 
        contentLabel.text = name
    }
    
}
