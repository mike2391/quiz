//
//  ObatViewController.swift
//  quiz
//
//  Created by prk on 02/11/22.
//

import UIKit

class ObatViewController: UIViewController {
        
    @IBOutlet weak var ObatImage: UIImageView!
    @IBOutlet weak var ObatName: UILabel!
    @IBOutlet weak var ObatType: UILabel!
    @IBOutlet weak var ObatPrice: UILabel!
    
        var name : String?
        var image : String?
        var harga : Int?
        var type : String?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            ObatImage.image = UIImage(named: image as! String)
            ObatName.text = (name)
            ObatType.text = (type)
            ObatPrice.text = "Rp.\(harga)"
        }
        
}
