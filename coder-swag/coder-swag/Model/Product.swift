//
//  Product.swift
//  coder-swag
//
//  Created by Christian Davis on 1/29/19.
//  Copyright © 2019 xianapps. All rights reserved.
//

import Foundation
struct Product {
    private(set) public var title: String
    private(set) public var price: String // Mark reasons that these numerical characters are for display only and therefore a String, that we are not using the value here (in reality would receive a value from a backend server anyway, and that would be converted to a String for insertion in a text field for display)
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title // struct title = init title (see comments in Category.swift)
        self.price = price
        self.imageName = imageName
    }
}
