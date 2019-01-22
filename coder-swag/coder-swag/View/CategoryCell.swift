//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Christian Davis on 1/21/19.
//  Copyright © 2019 xianapps. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView! // Mark hand-codes this, links in IB
    @IBOutlet weak var categoryTitle: UILabel! // Mark hand-codes this, links in IB

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
