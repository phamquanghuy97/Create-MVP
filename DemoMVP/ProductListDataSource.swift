//
//  ProductListDataSource.swift
//  DemoMVP
//
//  Created by Phạm Huy on 8/15/19.
//  Copyright © 2019 Phạm Huy. All rights reserved.
//

import UIKit

class ProductListDataSource: NSObject, UITableViewDataSource {
    var products: [Product]!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        let product = products[indexPath.row]
        cell.textLabel?.text = product.name
        cell.detailTextLabel?.text = String(product.price)
        return cell
    }
}

