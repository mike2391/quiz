

import UIKit

class ObatViewController: UIViewController {

    @IBOutlet weak var ObatImage: UIImageView!
    @IBOutlet weak var ObatName: UILabel!
    @IBOutlet weak var ObatType: UILabel!
    @IBOutlet weak var ObatPrice: UILabel!
    
    var image: String?
    var name: String?
    var type: String?
    var price: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ObatImage.image = UIImage(named: image as! String)
        ObatName.text = (name)
        ObatType.text = (type)
        ObatPrice.text = "Rp. \(price)"
    }
    
    @IBAction func detailButton(_ sender: Any) {
        performSegue(withIdentifier: "test1", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "test1"{
            let obatController = segue.destination as! DetailViewController
            obatController.image = self.image
            obatController.name = self.name
            obatController.type = self.type
            obatController.price = self.price
        }
    }
}
