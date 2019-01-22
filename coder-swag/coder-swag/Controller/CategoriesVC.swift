//
//  ViewController.swift
//  coder-swag
//
//  Created by Christian Davis on 1/16/19.
//  Copyright © 2019 xianapps. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController { // Mark used the Refactor > Rename, to make this class name more descriptive
    
    @IBOutlet weak var categoryTable: UITableView! // Mark hand-codes this, links in IB

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

