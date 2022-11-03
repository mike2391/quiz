

import UIKit
protocol ItemDelegete{
    func diUpdate(change: Int, price: Int)
}

class DetailObatViewController: UIViewController {
    

    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goBack"{
            let obatController = segue.destination as! DetailViewController
            obatController.qualityObat = String(banyakObat)
        }
    }
}

