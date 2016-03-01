//
//  MenuItemCell.swift
//  GroupProject2
//
//  Created by Casey on 2/26/16.
//  Copyright © 2016 Robert Masen. All rights reserved.
//

import UIKit

class MenuItemCell: UITableViewCell {

    @IBOutlet var photo: UIImageView!
    
    @IBOutlet var item: UILabel!
    
    @IBOutlet var desc: UILabel!
    
    @IBOutlet var price: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
