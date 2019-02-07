//
//  ViewController.swift
//  coder-swag
//
//  Created by Christian Davis on 1/16/19.
//  Copyright © 2019 xianapps. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate { // STEP 9. adds 2 protocols to feed data to tableView

    // STEP 1. Mark used the Refactor > Rename, to make this class name more descriptive. the two UITableView*** names here refer to protocols
    
    @IBOutlet weak var categoryTable: UITableView! // STEP 3. Mark hand-codes this, links in IB

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        categoryTable.dataSource = self // STEP 14. dataSource is this CategoriesVC class itself
        categoryTable.delegate = self // removing the protocols above crashes code
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // STEP 10. Compiler inserted these 2 protocol stubs right under class declaration after hitting 'Fix' error. Mark moves them here, deletes [highlighted] editor placeholders
        return DataService.instance.getCategories().count // STEP 11. returns total of items in array (type Int)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell { // STEP 13. "CategoryCell" identifier not set yet
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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { // STEP 15. MARK DIDN'T REQUIRE THIS FUNC TO WORK. IT WAS ADDED BY OTHER STUDENTS TO SQUEEZE MORE THAN ONE CELL IN TABLE VIEW
        return tableView.frame.size.height / 4
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { // STEP 23.
        let category = DataService.instance.getCategories()[indexPath.row] // We're passing data here (category)...
        performSegue(withIdentifier: "ProductsVC", sender: category) // into performSegue, so that when prepareForSegue() is called, we can pass that over into ProductVC
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC { // We're grabbing the distination VC and passing it into the appropriate VC
            
            let barBtn = UIBarButtonItem() // STEP 36. Mark says must make NEW button
            barBtn.title = "" // empty string assigned to new button title
            navigationItem.backBarButtonItem = barBtn // new button REPLACES old button
            
            assert(sender as? Category != nil) // STEP 28. just for buildtime, not runtime. Will crash program if nil, layer of protection as a developer against his force unwrapping below. Mark says his program REQUIRES that the object be a Category. If this could be another type of object, he would have used an if let or guard statement instead.
            
            productsVC.initProducts(category: sender as! Category) // STEP 27. above, in tableView(didSelectRowAt indexPath) we passed in a category to the sender. The sender parameter in this func is type Any? [object], so we specify a Category object be sent to the sender.
        }
    }

//    override func didReceiveMemoryWarning() { // Mark deletes this boilerplate stuff
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

