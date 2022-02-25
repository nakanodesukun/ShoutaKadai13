//
//  CoustomCell.swift
//  ShoutaKadai13
//
//  Created by 中野翔太 on 2022/02/08.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var checkMarkImage: UIImageView!

    func configure(titleName: String, imageViewName: String) {
        titleLabel.text = titleName
        checkMarkImage.image = UIImage(named: imageViewName)
    }

}
