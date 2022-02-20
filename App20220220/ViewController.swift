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
        
        images = [UIImage(named: "image1"),
                  UIImage(named: "image2"),
                  UIImage(named: "image3"),
                  UIImage(named: "image4"),
                  UIImage(named: "image5"),
                  UIImage(named: "image6")]
        
        theCollectionView.dataSource = self
        
        let fullScreenSize = UIScreen.main.bounds.size
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.minimumLineSpacing = 10
        layout.itemSize = CGSize(width: (fullScreenSize.width / 3 - 20.0), height: fullScreenSize.width / 3 - 20.0)
        theCollectionView.setCollectionViewLayout(layout, animated: false)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! MyCollectionViewCell
        cell.backgroundColor = UIColor.lightGray
        cell.theImageView.image = images[indexPath.row]
        
//        let imageView = UIImageView(image: images[indexPath.row])
//        imageView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
//        cell.addSubview(imageView)
//        cell.bringSubviewToFront(imageView)
        
        return cell
    }
    
}

