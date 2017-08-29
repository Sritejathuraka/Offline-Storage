//
//  infoTableViewCell.swift
//  SqliteFMDB
//
//  Created by Sriteja Thuraka on 5/10/17.
//  Copyright © 2017 Sriteja Thuraka. All rights reserved.
//

import UIKit

class infoTableViewCell: UITableViewCell {

    @IBOutlet weak var infoName: UILabel!
    @IBOutlet weak var infoAdress: UILabel!
    @IBOutlet weak var infoPhone: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
