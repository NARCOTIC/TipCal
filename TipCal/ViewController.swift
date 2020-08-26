import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func calculate(_ sender: Any) {
        let bill = Double(billAmount.text!) ?? 0
        let tipPercentageArray = [0.1, 0.15, 0.2]
        let tip = bill * tipPercentageArray[tipPercentage.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmount.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f", total)
    }
    
    @IBAction func keyboardDisapear(_ sender: Any) {
        view.endEditing(true)
    }
}
