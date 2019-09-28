//  
//  DetailListViewController.swift
//  ShoppingList
//
//  Created by Daniel Dura Monge on 28/09/2019.
//  Copyright © 2019 Daniel Dura Monge. All rights reserved.
//

import UIKit

class DetailListViewController: UIViewController {

    // OUTLETS HERE

    // VARIABLES HERE
    var viewModel:DetailListViewModel?

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
protocol DetailListViewControllerProtocol: class {

    func showError()
}


extension DetailListViewController: DetailListViewControllerProtocol {

    func showError() {
        print("Error")
    }

}


