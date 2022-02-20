//
//  MyViewController.swift
//  App20220220
//
//  Created by grace on 2022/2/20.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    
    var tempImage:UIImage? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImage.image = tempImage
    }
    
    @IBAction func editAction(_ sender: UIButton) {
        print("editAction UIButton")
    }
    
}
