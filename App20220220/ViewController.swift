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
    @IBOutlet weak var mySegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*https://medium.com/%E5%BD%BC%E5%BE%97%E6%BD%98%E7%9A%84-swift-ios-app-%E9%96%8B%E7%99%BC%E5%95%8F%E9%A1%8C%E8%A7%A3%E7%AD%94%E9%9B%86/%E8%AA%BF%E6%95%B4-uisegmentedcontrol-%E5%85%83%E4%BB%B6%E7%9A%84%E5%AD%97%E5%9E%8B-ed6995018f65*/
        mySegment.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 26.0)], for: .normal)
        
        images = [UIImage(named: "image1"),
                  UIImage(named: "image2"),
                  UIImage(named: "image3"),
                  UIImage(named: "image4"),
                  UIImage(named: "image5"),
                  UIImage(named: "image6")]
        
        theCollectionView.dataSource = self
        
        setLayout(numberOfLine: 3.0)
    }
    
    func setLayout(numberOfLine:CGFloat) {
        let screenSize = UIScreen.main.bounds.size
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 5
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        layout.itemSize = CGSize(width: screenSize.width / numberOfLine - 10, height: screenSize.width / numberOfLine - 10)
        theCollectionView.setCollectionViewLayout(layout, animated: true)
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
    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
        
        switch sender.selectedSegmentIndex{
        case 0:
            setLayout(numberOfLine: 3)
        case 1:
            setLayout(numberOfLine: 4)
        case 2:
            setLayout(numberOfLine: 5)
        default:
            break
        }
    }
    
}

