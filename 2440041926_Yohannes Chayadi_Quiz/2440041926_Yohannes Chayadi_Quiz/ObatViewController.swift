//
//  ObatViewController.swift
//  2440041926_Yohannes Chayadi_Quiz
//
//  Created by prk on 02/11/22.
//

import UIKit

class ObatViewController: UIViewController {

    @IBOutlet var obatImage: UIImageView!
    @IBOutlet var labelNama: UILabel!
    @IBOutlet var labelDetail: UILabel!
    @IBOutlet var labelHarga: UILabel!
    
    var imageObat: String?
    var namaObat: String?
    var detailObat: String?
    var hargaObat: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        obatImage.image = UIImage(named: imageObat as! String)
        labelNama.text = (namaObat)
        labelDetail.text = (detailObat)
        labelHarga.text = "Rp. \(hargaObat)"
    }
    
    @IBAction func detailButton(_ sender: Any) {
        performSegue(withIdentifier: "test1", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "test1"{
            let obatController = segue.destination as! DetialViewController
            obatController.imageObat = self.imageObat
            obatController.namaObat = self.namaObat
            obatController.detailObat = self.detailObat
            obatController.hargaObat = self.hargaObat
        }
    }
}
