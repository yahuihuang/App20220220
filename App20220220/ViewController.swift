//
//  ViewController.swift
//  App20220220
//
//  Created by grace on 2022/2/13.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {

    
    @IBOutlet weak var theCollectionView: UICollectionView!
    var images:[UIImage?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        images = [UIImage(named: "AppIcon-1"),
                  UIImage(named: "AppIcon-2"),
                  UIImage(named: "AppIcon-3"),
                  UIImage(named: "AppIcon-4"),
                  UIImage(named: "AppIcon-5"),
                  UIImage(named: "AppIcon-6")]
        
        theCollectionView.dataSource = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath)
        cell.backgroundColor = UIColor.red
        return cell
    }
    
}

