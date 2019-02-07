//
//  ProductVC.swift
//  coder-swag
//
//  Created by Christian Davis on 1/31/19.
//  Copyright © 2019 xianapps. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    // STEP 29. Added protocols to feed data to collectionView, IBOutlet below
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products = [Product]() // STEP 25. Empty array to base Collection View off of, because if the data hasn't loaded yet (i.e. dl from internet) the Collection View would find a value of nil and cause the code to crash.

    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCollection.dataSource = self // STEP 31. This collection view is going to be the delegate and will implement the appropriate protocols.
        productsCollection.delegate = self
    }

//    Mark delets these boilerplate statements
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */
    
    func initProducts(category: Category) { // STEP 24.
        products = DataService.instance.getProducts(forCategoryTitle: category.title) // STEP 26. This func will be called from CategoriesVC.swift, func prepare(for segue)
        navigationItem.title = category.title // STEP 35.
        // Mark says you can't use navigationItem.backBarButtonItem.title = "" because the back button belongs to the PREVIOUS VC. See CategoriesVC.swift > prepare(for segue)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int { // STEP 30. Mark moves these 2 protocol stubs from below declaration to here, deletes editor placeholders (I used command-option-] to move after selecting both statements)
//        if (section == 1) { Mark illustrates what to do if we had more than one section
//            return 3
//        }
        return products.count // ...but we only have one section
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell { // STEP 33. Mark returns here, forgot to cast as? ProductCell. Creates / dequeues a cell
            let product = products[indexPath.row] // STEP 32. passed in the appropriate product
            cell.updateViews(product: product) // STEP 34. updates the data
            return cell
        }
        
        return ProductCell()
        
    }
}
