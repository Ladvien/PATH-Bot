//
//  ViewController.swift
//  PATH-Bot
//
//  Created by Casey Brittain on 3/23/15.
//  Copyright (c) 2015 Casey Brittain. All rights reserved.
//

import UIKit

//  Global variables for SAL data.
var serviceCodes = Array<String>()
var serviceDescription = Array<String>()
var whenToUseCode = Array<String>()

// Used to key dictionary to rows.
var serviceCodesCount: Int = 0
var serviceCodeLookup: [String: Int] = ["" : 0]

//  Setup initial CSV data.
var columns = Dictionary<String, String>()
var rows = Dictionary<String, String>()
var headers: String = ""

// Used to pass selected row to detailView
var selectionValue: Int = 0


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setup a blank cell.
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
         self.automaticallyAdjustsScrollViewInsets = false
        
        initSALFile()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return serviceCodesCount
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Load cell; set labels to CSV data.
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = serviceCodes[indexPath.row]
        //println(serviceDescription[indexPath.row])
        cell.detailTextLabel?.text = serviceDescription[indexPath.row]

        return cell
    }
    
    
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
        // Gets int for selected row.
        let selection = indexPath.row
        selectionValue = indexPath.row
        
        // This gets the path to a local resource and unwraps it.
        if let path = NSBundle.mainBundle().pathForResource("SAL_CODEs_v1", ofType: "csv"){
            if let url = NSURL(fileURLWithPath: path){
                var error: NSErrorPointer = nil
                if let csv = CSV(contentsOfURL: url, error: error) {
                    
                    // Rows
                    let rows = csv.rows[selection]
                }
            }
        }
        
        // Load the UIViewController, Nib, then push to it.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("serviceCodeSelectorView") as UIViewController
        navigationController?.pushViewController(vc, animated: true)
        
    }


// MARK: SAL

    func initSALFile(){
    
        // This gets the path to a local resource and unwraps it.
        if let path = NSBundle.mainBundle().pathForResource("SAL_CODEs_v1", ofType: "csv"){
            
            //let url = NSURL(string: path)
            if let url = NSURL(fileURLWithPath: path){
                var error: NSErrorPointer = nil
                if let csv = CSV(contentsOfURL: url, error: error) {

                    // Rows
                    var rows = csv.rows
                    let headers = csv.headers  //=> ["id", "name", "age"]
                    // Columns
                    let columns = csv.columns
                    serviceCodes = columns["SER"]!
                    serviceDescription = columns["SERVICE DESCRIPTION & DEFINITIONS"]!
                    whenToUseCode = columns["WHEN TO USE THIS CODE (EXAMPLES)"]!
                    
                    // Build a service-code lookup.
                    if let serviceCodes = csv.columns["SER"]{
                        for (index, element) in enumerate(serviceCodes) {
                            serviceCodeLookup[element] = (index)
                        }
                    }
                    
                    serviceCodesCount = serviceCodes.count

                    // Create a row buffer for the row we are going to look-up based on
                    // the service code.
                    let rowBfr: Array = csv.columns["SER"]!
                    if let serviceCodeRow = serviceCodeLookup["33"]{
                        let serviceCodeRow = serviceCodeLookup["33"]
                    }
                } // Unwrap CSV.
            } // Unwrap URL
        } // Unwrap PATH
    }
    
    
    
    
}
