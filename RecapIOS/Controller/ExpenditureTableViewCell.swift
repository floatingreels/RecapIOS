//
//  ExpentitureTableViewCell.swift
//  RecapIOS
//
//  Created by mobapp02 on 24/01/2020.
//  Copyright © 2020 mobapp02. All rights reserved.
//

import UIKit

class ExpenditureTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var priceLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
