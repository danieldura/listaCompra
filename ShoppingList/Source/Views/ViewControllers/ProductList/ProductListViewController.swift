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
    
    
    @IBOutlet weak var tableView: UITableView!
    let cellId = "ProductTableViewCell"
    // VARIABLES HERE
    var viewModel:ProductListViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Lista de la compra"

        
        
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


extension ProductListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = "hola"
        cell.selectionStyle = .none
        
        return cell
    }
}

extension ProductListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
