//
//  CustomTableViewCell.swift
//  CustomizeTableViewCell_v3
//
//  Created by macbook on 9/29/18.
//  Copyright © 2018 Viet. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var position: UILabel!
    @IBOutlet weak var star: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
