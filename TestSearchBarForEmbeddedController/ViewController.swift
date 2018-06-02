//
//  ViewController.swift
//  TestSearchBarForEmbeddedController
//
//  Created by Alexander Lonsky on 27/05/2018.
//  Copyright © 2018 Alexander Lonsky. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let searchController =  UISearchController(searchResultsController: nil)
        searchController.definesPresentationContext = true
        searchController.hidesNavigationBarDuringPresentation = true

        self.navigationItem.searchController = searchController
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "cell #\(indexPath.row + 1)"
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

