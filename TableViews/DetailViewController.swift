//
//  DetailViewController.swift
//  TableViews
//
//  Created by Brian J Glowe on 10/10/15.
//  Copyright © 2015 Brian Glowe. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

// didSet is called immediately after a property is stored, this helps for updated data
    // so every
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
// this checks to see if an object is present
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

