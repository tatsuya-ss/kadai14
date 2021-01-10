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
    
    func configure(isChecked: Bool, name: String) {
        if isChecked == true {
            checkImageView.image = UIImage(named: CustomCellId.checkImageName)
        } 
        contentLabel.text = name
    }
//これでもできるが、パフォーマンスの観点からcellForRowAtの中で初期化を行う事が推奨されているらしい
    override func prepareForReuse() {
        super.prepareForReuse()
        //画像の初期化
        checkImageView.image = nil
    }
}
