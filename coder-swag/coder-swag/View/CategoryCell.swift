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

    // Mark deletes below boilerplate stuff
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
    func updateViews(category: Category) { // Category being an array containing an image, we don't have to get an image separately! Code is well-written and protected.
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
