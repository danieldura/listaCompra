//  
//  ProductListRouter.swift
//  ShoppingList
//
//  Created by Daniel Dura Monge on 28/09/2019.
//  Copyright © 2019 Daniel Dura Monge. All rights reserved.
//

import Foundation
import UIKit

class ProductListRouter {
    
    weak var viewController: ProductListViewController?
    
    static func getViewController() -> UINavigationController{
        let viewController = ProductListViewController()
        let router = ProductListRouter()
        let viewModel = ProductListViewModel()
        
        configureModule(viewController, router, viewModel)
        
        let nv = UINavigationController(rootViewController: viewController)
        
        return nv
        
    }


}

extension ProductListRouter {
        private static func configureModule(_ viewController: ProductListViewController, _ router: ProductListRouter, _ viewModel: ProductListViewModel) {
        
        viewController.viewModel = viewModel
        
        viewModel.router = router
        viewModel.view = viewController
        
        router.viewController = viewController
        
    }
}
