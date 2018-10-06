//
//  DetailViewController.swift
//  CustomizeTableViewCell_v3
//
//  Created by macbook on 9/29/18.
//  Copyright © 2018 Viet. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var titleString : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        // Set the title
        title = titleString
        
        // Set the image
        imageView.image = UIImage(named: titleString + ".jpg")
        
    }
    
}
