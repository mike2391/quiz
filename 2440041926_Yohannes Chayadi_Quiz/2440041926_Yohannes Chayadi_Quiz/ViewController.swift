//
//  ViewController.swift
//  2440041926_Yohannes Chayadi_Quiz
//
//  Created by prk on 02/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var obatArr : [obat] = []
    
    func initialObat (){
        obatArr.append(obat(imageObat: "OBH", namaObat: "OBH Combi Anak by Sidomunucl", detailObat: "Hard Medicine", hargaObat: 30000))
        obatArr.append(obat(imageObat: "Panadol", namaObat: "Panadol Cold & Flu", detailObat: "Hard Medicine", hargaObat: 20000))
        obatArr.append(obat(imageObat: "Blackmores", namaObat: "Blackmores Vitamin C1000", detailObat: "light Medicine", hargaObat: 50000))
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        initialObat()
        let obatController = segue.destination as! ObatViewController
        if segue.identifier == "sg1"{
            obatController.imageObat = obatArr[0].imageObat
            obatController.namaObat = obatArr[0].namaObat
            obatController.detailObat = obatArr[0].detailObat
            obatController.hargaObat = obatArr[0].hargaObat
        }
        else if segue.identifier == "sg2"{
            obatController.imageObat = obatArr[1].imageObat
            obatController.namaObat = obatArr[1].namaObat
            obatController.detailObat = obatArr[1].detailObat
            obatController.hargaObat = obatArr[1].hargaObat
        }
        else if segue.identifier == "sg3"{
            obatController.imageObat = obatArr[2].imageObat
            obatController.namaObat = obatArr[2].namaObat
            obatController.detailObat = obatArr[2].detailObat
            obatController.hargaObat = obatArr[2].hargaObat
        }
    }
    
    
}

