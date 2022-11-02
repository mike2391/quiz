//
//  DetialViewController.swift
//  2440041926_Yohannes Chayadi_Quiz
//
//  Created by prk on 02/11/22.
//

import UIKit

class DetialViewController: UIViewController{

    @IBOutlet var LabelTotalPrice: UILabel!
    @IBOutlet var totalHarga: UILabel!
    
    var detailObatArr : [obat] = []
    var imageObat: String?
    var namaObat: String?
    var detailObat: String?
    var hargaObat: Int?
    var qualityObat: String?
    var hasilHarga = 0
    
    override func viewDidLoad() {
            super.viewDidLoad()
            loadData()
        }
    
    func loadData(){
        totalHarga.text = "\(hasilHarga)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue1"{
            let obatController = segue.destination as! DetailObatViewController
            obatController.imageObat = self.imageObat
            obatController.namaObat = self.namaObat
            obatController.detailObat = self.detailObat
            obatController.hargaObat = self.hargaObat
            obatController.delegete = self
        }
    }
}

extension DetialViewController: ItemDelegete{
    func diUpdate(change: Int, price: Int) {
        hasilHarga += change*price
        loadData()
    }
}
