//
//  DataService.swift
//  coder-swag
//
//  Created by Christian Davis on 1/22/19.
//  Copyright © 2019 xianapps. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService() // CODE STEP 1. By using static here Mark is creating a 'singleton', meaning only one instance can exist, and it will exist for the lifetime of the app unless manually destroyed (potential memory exhaust)
    
    private let categories = [ // private so no public access. below data would not be present if requesting it from a server
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png") // Category struct did not autocomplete here until I sent ']' down to line below!
    ]
    private let hats = [ // CODE STEP 2.
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Shirt Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Shirt Black", price: "$18", imageName: "shirt05.png")
        ]
    
    private let digitalGoods = [Product]() // CODE STEP 4. Can't use [] for empty array because Swift requires a type; () creates the empty array. VERY IMPORTANT: This statement is needed because our Collection View is feeding off of this data, and needs to receive an array of some kind; if we don't provide an empty array, we'll have a value that is nil and the code will crash!
    
    func getCategories() -> [Category] { // CODE STEP 3.
        return categories // simulates a server response
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product] { // CODE STEP 5. Mark invents forCategoryTitle param description on the fly
        switch title {
        case "SHIRTS": // CODE STEP 7. Mark says the order of products here does not matter
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
        
    }
    
    func getHats() -> [Product] { // CODE STEP 6.
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
}
