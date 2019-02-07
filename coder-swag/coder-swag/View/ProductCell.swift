//
//  ProductCell.swift
//  coder-swag
//
//  Created by Christian Davis on 1/29/19.
//  Copyright © 2019 xianapps. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell { // class because only need one instance of, as opposed to struct
    @IBOutlet weak var productImage: UIImageView! // STEP 16.
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) { // STEP 31. Updates the data. Everytime a Collection View Cell (CVC) is created / dequeued, we're going to pass in the appropriate product and update the view so it's showing the correct data. IMPORTANT because views on CVCs and Table View Cells (TVCs) are recyclable
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
