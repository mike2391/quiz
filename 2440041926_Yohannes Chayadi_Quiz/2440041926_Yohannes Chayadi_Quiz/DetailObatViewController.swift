//
//  DetailObatViewController.swift
//  2440041926_Yohannes Chayadi_Quiz
//
//  Created by prk on 02/11/22.
//

import UIKit

protocol ItemDelegete{
    func diUpdate(change: Int, price: Int)
}

class DetailObatViewController: UIViewController {
    
    @IBOutlet var imageDetailObat: UIImageView!
    @IBOutlet var labelNamaObat: UILabel!
    @IBOutlet var labelJenisObat: UILabel!
    @IBOutlet var labelHargaObat: UILabel!
    @IBOutlet var labelQuality: UILabel!
    @IBOutlet var jumlahObat: UITextField!
    
    var imageObat: String?
    var namaObat: String?
    var detailObat: String?
    var hargaObat: Int?
    var qualityObat: String?
    var banyakObat = 0
    
    var delegete:ItemDelegete?

    override func viewDidLoad() {
        imageDetailObat.image = UIImage(named: imageObat as! String)
        labelNamaObat.text = (namaObat)
        labelJenisObat.text = (detailObat)
        labelHargaObat.text = "Rp. \(hargaObat)"
        labelQuality.text = "Input Quality"
       loadData()
        super.viewDidLoad()
    }
    
    func loadData(){
        jumlahObat.text = "\(banyakObat)"
    }
    
    
    @IBAction func minButton(_ sender: Any) {
        if banyakObat > 0{
            delegete?.diUpdate(change: -1, price: (hargaObat!))
            banyakObat -= 1
            loadData()
        }
    }
    
    @IBAction func plusButton(_ sender: Any) {
        if banyakObat < 100{
            delegete?.diUpdate(change: 1, price: (hargaObat!))
            banyakObat += 1
            loadData()
        }
    }
}
