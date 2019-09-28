//  
//  DetailListRouter.swift
//  ShoppingList
//
//  Created by Daniel Dura Monge on 28/09/2019.
//  Copyright © 2019 Daniel Dura Monge. All rights reserved.
//

import Foundation

class DetailListRouter {

    weak var viewController: DetailListViewController?

        static func getViewController() -> DetailListViewController{
        let viewController = DetailListViewController()
        let router = DetailListRouter()
        let viewModel = DetailListViewModel()
        
        configureModule(viewController, router, viewModel)
        
        return viewController
        
    }


}

extension DetailListRouter {
        private static func configureModule(_ viewController: DetailListViewController, _ router: DetailListRouter, _ viewModel: DetailListViewModel) {
        
        viewController.viewModel = viewModel
        
        viewModel.router = router
        viewModel.view = viewController
        
        router.viewController = viewController
        
    }
}
