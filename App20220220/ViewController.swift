//
//  ViewController.swift
//  App20220220
//
//  Created by grace on 2022/2/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let path = Bundle.main.path(forResource: "stock-market", ofType: "png") {
            print(path)
            theImage.image = UIImage(contentsOfFile: path)
        }
    }


}

