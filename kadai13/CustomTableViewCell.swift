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

    /// この画像を外で使うことはないのでprivateで閉じ込める
    private static let checkImage = UIImage(named: "check")

    // セルが増えてくるとCustomCellIdの項目が増えて破綻しそうなのでセル側で定義
    static let reuseIdentifier = "Cell1"

    func configure(isChecked: Bool, name: String) {
        // 再利用に備えるため、必ず何かを代入する
        checkImageView.image = isChecked ? Self.checkImage : nil

        contentLabel.text = name
    }
}
