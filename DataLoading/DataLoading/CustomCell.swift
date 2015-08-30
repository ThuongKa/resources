//
//  CustomCell.swift
//  DataLoading
//
//  Created by Thuong Vu on 8/30/15.
//  Copyright (c) 2015 ThuongNH. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        descriptionLabel.numberOfLines = 0
        descriptionLabel.sizeToFit()
    }
}
