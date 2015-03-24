//
//  detailViewController.swift
//  PATH-Bot
//
//  Created by Casey Brittain on 3/22/15.
//  Copyright (c) 2015 Casey Brittain. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {
    
    override func viewDidLoad() {
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        //var saveButton = UIBarButtonItem(title: "Save", target: self, action: "saveButton") //Use a selector
        var saveButton = UIBarButtonItem(title: "Save", style: .Plain, target: self, action: "saveButton")
        navigationItem.leftBarButtonItem = saveButton
        //navigationController!.navigationBar.barTintColor = UIColor.greenColor()
        //title = "Activity Details"
    }
    
    func saveButton() {
        println("Yo")
    }
}
