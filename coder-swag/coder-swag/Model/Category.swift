//
//  Category.swift
//  coder-swag
//
//  Created by Christian Davis on 1/22/19.
//  Copyright © 2019 xianapps. All rights reserved.
//

import Foundation

struct Category { // STEP 4. struct for creating an obj over and over
    private(set) public var title: String // Mark illustrates how someone could change these public vars with a let statement inside viewDidLoad() in CategoriesVC.swift--he adds private(set), allowing public GETTING/fetching/retrieving the var values while now preventing public SETTING the var values.
    private(set) public var imageName: String
    
    init(title: String, imageName: String) { // Mark points out this parameter 'title' is not the var of the same name above (applies to use of 'imageName' as well). He uses the same names per convention.
        self.title = title // self refers to struct/obj ITSELF which is calling init(), title TO LEFT of = refers to private(set) public var/PROPERTY of struct/obj, title TO RIGHT of = refers to init's PARAMETER (can see this by ⌘-clicking each title, Jump to Definition) through which a val is passed in FROM ARGS IN THE SCTRUCT CALLS FROM DATASERVICE.SWIFT; for each struct created the val is assigned to the private(set) public var title, [property] of the struct above
        self.imageName = imageName
        
    }
    
}
