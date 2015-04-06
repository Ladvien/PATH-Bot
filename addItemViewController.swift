//
//  addItemViewController.swift
//  PATH-Bot
//
//  Created by Casey Brittain on 4/5/15.
//  Copyright (c) 2015 Casey Brittain. All rights reserved.
//

import UIKit

class addItemViewController: UICollectionViewController {
    
    @IBOutlet var serviceCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.serviceCollectionView.setContentOffset(CGPoint(x: 0,y: 0), animated: false)
        self.automaticallyAdjustsScrollViewInsets = false
    }
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as UICollectionViewCell
        
        return cell
    }
    
}