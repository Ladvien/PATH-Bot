//
//  detailViewController.swift
//  PATH-Bot
//
//  Created by Casey Brittain on 3/22/15.
//  Copyright (c) 2015 Casey Brittain. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {
    @IBOutlet weak var activityName: UILabel!
    @IBOutlet weak var serviceDescriptionTextView: UITextView!

    
    override func viewDidLoad() {

        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        //var saveButton = UIBarButtonItem(title: "Save", target: self, action: "saveButton") //Use a selector
        var saveButton = UIBarButtonItem(title: "Save", style: .Plain, target: self, action: "saveButton")
        navigationItem.leftBarButtonItem = saveButton
        //navigationController!.navigationBar.barTintColor = UIColor.greenColor()
        //title = "Activity Details"
        
        self.activityName.text = "Waahoo!"
        self.serviceDescriptionTextView.text = serviceDescription[selectionValue]
        
    }
    
    
    func saveButton() {
        // Load the UIViewController, Nib, then push to it.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("mainViewController") as UIViewController
        navigationController?.popToRootViewControllerAnimated(true)
        println("Yo")
    }
}
