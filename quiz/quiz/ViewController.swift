//
//  ViewController.swift
//  quiz
//
//  Created by prk on 10/31/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    var obatArr : [obat] = []
    
    func initialObat(){
        obatArr.append(obat(name: "OBH Combi Anak by Sidomuncul", image: "OBH", price: 30000, type: "Hard Medicine"))
        obatArr.append(obat(name: "Panadol Cold & FLU", image: "Panadol", price: 20000, type: "Hard Medicine"))
        obatArr.append(obat(name: "BLACKMORES Vitamin C1000", image: "Blackmores", price: 50000, type: "Light Medicine"))
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        initialObat()
        
        let ObatController = segue.destination as! ObatViewController
        if segue.identifier == "obat1"{
            ObatController.image = obatArr[0].image
            ObatController.name = obatArr[0].name
            ObatController.type = obatArr[0].type
            ObatController.harga = obatArr[0].price
        }
        else if segue.identifier == "obat2"{
            ObatController.image = obatArr[1].image
            ObatController.name = obatArr[1].name
            ObatController.type = obatArr[1].type
            ObatController.harga = obatArr[1].price
        }
        else if segue.identifier == "obat3"{
            ObatController.image = obatArr[2].image
            ObatController.name = obatArr[2].name
            ObatController.type = obatArr[2].type
            ObatController.harga = obatArr[2].price
        }
        
    }
    
}
