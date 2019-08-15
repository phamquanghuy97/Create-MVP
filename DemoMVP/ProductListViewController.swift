//
//  ProductListViewController.swift
//  DemoMVP
//
//  Created by Phạm Huy on 8/15/19.
//  Copyright © 2019 Phạm Huy. All rights reserved.
//

import UIKit

class ProductListViewController: UITableViewController,ProductListView {
    func setProductList(products: [Product]) {
        productListDataSource = ProductListDataSource()
        productListDataSource.products = products
        tableView.dataSource = productListDataSource
        tableView.reloadData()
    }

    var presenter: ProductListViewPresenter!
    var productListDataSource: ProductListDataSource!
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.showProductList()
    }
    func showProductList() {
        print("something")
    }
}
