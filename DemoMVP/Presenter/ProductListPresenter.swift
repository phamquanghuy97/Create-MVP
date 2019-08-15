//
//  ProductListPresenter.swift
//  DemoMVP
//
//  Created by Phạm Huy on 8/15/19.
//  Copyright © 2019 Phạm Huy. All rights reserved.
//

import Foundation
import UIKit
class ProductListPresenter: ProductListViewPresenter {
    let view: ProductListView
    let products: [Product]

    required init(view: ProductListView, products: [Product]) {
        self.view = view
        self.products = products
    }

    func showProductList() {
        self.view.setProductList(products: self.products)
    }
}
