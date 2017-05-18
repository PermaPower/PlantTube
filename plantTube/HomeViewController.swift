//
//  ViewController.swift
//  plantTube
//
//  Created by David on 17/5/17.
//  Copyright © 2017 Permaculture Power. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    private let cellID = "cellId"
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Set the tile of the navigation bar
        navigationItem.title = "Home"
        
        // Register the cell ID with the collectionView
        collectionView?.register(PlantCollectionViewCellACollectionViewCell.self, forCellWithReuseIdentifier: cellID)
        
        // Set the default background color for the collectionView
        collectionView?.backgroundColor = UIColor.white
            
    }

    // InvalidateLayout upon rotation of device
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionView?.collectionViewLayout.invalidateLayout()
        collectionView?.reloadData()
    }
    

    // Return the number of cells in collectionView
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    // Set the size of each collectionView Cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
    
    // For each cell in collecctionView
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! PlantCollectionViewCellACollectionViewCell
        
        cell.backgroundColor = getRandomColor()
        
        return cell
    }
    
    // Function to generate a random color
    func getRandomColor() -> UIColor {
        let randomRed: CGFloat = CGFloat(drand48())
        let randomGreen: CGFloat = CGFloat(drand48())
        let randomBlue: CGFloat = CGFloat(drand48())
    
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
