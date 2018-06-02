//
//  ContainerViewController.swift
//  TestSearchBarForEmbeddedController
//
//  Created by Alexander Lonsky on 27/05/2018.
//  Copyright © 2018 Alexander Lonsky. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {

    static let storyboard = UIStoryboard(name: "Main", bundle: nil)
    static let contentViewController = storyboard.instantiateViewController(withIdentifier: "main")

    override func viewDidLoad() {
        super.viewDidLoad()

        self.embed(ContainerViewController.contentViewController)
    }
}
