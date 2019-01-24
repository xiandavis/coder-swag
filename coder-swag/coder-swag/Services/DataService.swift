//
//  DataService.swift
//  coder-swag
//
//  Created by Christian Davis on 1/22/19.
//  Copyright © 2019 xianapps. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService() // By using static here Mark is creating a 'singleton', meaning only one instance can exist, and it will exist for the lifetime of the app unless manually destroyed (potential memory exhaust)
    
    private let categories = [ // private so no public access. below data would not be present if requesting it from a server
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png") // Category struct did not autocomplete here until I sent ']' down to line below!
    ]
    
    func getCategories() -> [Category] {
        return categories // simulates a server response
    }
}
