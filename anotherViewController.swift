//
//  anotherViewController.swift
//  PATH-Bot
//
//  Created by Casey Brittain on 4/6/15.
//  Copyright (c) 2015 Casey Brittain. All rights reserved.
//

import UIKit


class anotherViewController: UIViewController
{

    @IBOutlet var mainView: UIView!

    @IBOutlet weak var serviceCodeContainerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        serviceCodeContainerView.setTranslatesAutoresizingMaskIntoConstraints(false)
//        self.mainView.autoresizingMask = UIViewAutoresizing.FlexibleRightMargin
//        self.serviceCodeContainerView.autoresizingMask = UIViewAutoresizing.FlexibleRightMargin
        self.automaticallyAdjustsScrollViewInsets = false
        
    }
}