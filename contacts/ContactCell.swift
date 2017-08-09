//
//  ContactCell.swift
//  contacts
//
//  Created by Tom Dobson on 8/3/17.
//  Copyright © 2017 Dobson Studios. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var favoriteIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
