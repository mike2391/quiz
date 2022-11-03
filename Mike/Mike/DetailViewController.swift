

import UIKit

class DetailViewController: UIViewController{


    
    var image: String?
    var name: String?
    var type: String?
    var price: Int?
    var quantity: String?
    var total = 0
    
    override func viewDidLoad() {
            super.viewDidLoad()
            loadData()
        }
    
    func loadData(){
        TotalPrice.text = "\(total)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue1"{
            let ObatController = segue.destination as! DetailObatViewController
            ObatController.image = self.image
            ObatController.name = self.name
            ObatController.type = self.type
            ObatController.price = self.price
            ObatController.delegete = self
        }
        else if segue.identifier == "goRegis"{
            let ObatController = segue.destination as! RegisterViewController
            ObatController.name = self.name
            ObatController.type = self.type
            ObatController.price = self.price
            ObatController.quantity = self.quantity
            ObatController.total = self.total
        }
    }
    @IBAction func goResButton(_ sender: Any) {
        performSegue(withIdentifier: "goRegis", sender: self)
    }
}

extension DetailViewController: ItemDelegete{
    func diUpdate(change: Int, price: Int) {
        total += change*price
        loadData()
    }
    
}
