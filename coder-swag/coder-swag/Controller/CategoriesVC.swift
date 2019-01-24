//
//  ViewController.swift
//  coder-swag
//
//  Created by Christian Davis on 1/16/19.
//  Copyright © 2019 xianapps. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // Mark used the Refactor > Rename, to make this class name more descriptive. the two UITableView*** names here refer to protocols
    
    @IBOutlet weak var categoryTable: UITableView! // Mark hand-codes this, links in IB

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Marks adds this after finishing tableView() below
        categoryTable.dataSource = self // dataSource is this CategoriesVC class itself
        categoryTable.delegate = self // removing the protocols above crashes code
    }
    // Compiler inserted right under class declaration after hitting 'Fix' error, Mark moves them under viewDidLoad(), deletes [highlighted] editor placeholders
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count // returns total of items in array (type Int)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // Mark updates CategoryCell.swift before continuing here
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell { // "CategoryCell" identifier not set yet
            // Mark shows alternative for clarity:
            // let categories = DataService.instance.getCategories()
            // let category = categories[indexPath.row]
            // below is a combination of these statements
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell() // return empty cell if above let cell assignment fails
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { // THIS FUNC WAS ADDED BY OTHER STUDENTS TO SQUEEZE MORE THAN ONE CELL IN TABLE VIEW
        return tableView.frame.size.height / 4
    }
    

//    override func didReceiveMemoryWarning() { // Mark deletes this boilerplate stuff
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

