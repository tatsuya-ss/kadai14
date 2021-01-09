//
//  CustomTableViewCell.swift
//  kadai13
//
//  Created by 坂本龍哉 on 2021/01/09.
//

import UIKit

final class CustomTableViewCell: UITableViewCell {
    @IBOutlet private var checkImageView: UIImageView!
    @IBOutlet private var contentLabel: UILabel!
    
    //
    func configure(isChecked: Bool, name: String) {
        if isChecked == true {
            checkImageView.image = UIImage(named: CustomCellId.checkImageName)
        } 
        contentLabel.text = name
    }
}
