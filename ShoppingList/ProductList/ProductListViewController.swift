//  
//  ProductListViewController.swift
//  ShoppingList
//
//  Created by Daniel Dura Monge on 28/09/2019.
//  Copyright © 2019 Daniel Dura Monge. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController {

    // OUTLETS HERE

    // VARIABLES HERE
    var viewModel:ProductListViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        localize()
        setStyles()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    

    private func localize(){

    }

    private func setStyles(){
    
    }

    
}


//MARK: - ViewModel communication
protocol ProductListViewControllerProtocol: class {

    func showError()
}


extension ProductListViewController: ProductListViewControllerProtocol {

    func showError() {
        print("Error")
    }

}


