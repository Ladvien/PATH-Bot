//
//  addItemViewController.swift
//  PATH-Bot
//
//  Created by Casey Brittain on 4/5/15.
//  Copyright (c) 2015 Casey Brittain. All rights reserved.
//

import UIKit

class serviceCodeSelectorCollectionView: UICollectionViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
    }
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return serviceCodes.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as serviceCodeSelectorCell

        cell.serviceCodeLabel.text = serviceCodes[indexPath.row]
        return cell
    }
    
}