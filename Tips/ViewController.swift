//
//  ViewController.swift
//  Tips
//
//  Created by Tenzing Nyima on 11/21/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TipLabel: UILabel!
    
    @IBOutlet weak var TotalLabel: UILabel!
    
    @IBOutlet weak var BillField: UITextField!
    
    
    @IBOutlet weak var tipcontrol: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        
        
        view.endEditing(true)// dismisses keyboard
    }
    
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        
        //get bill amount
        let bill = Double(BillField.text!) ?? 0 // if its not valid change it to zero
        //calculate tip
        // create array of tip percentages
        let tipPercentages = [ 0.15, 0.2, 0.3]
        
        let tip = bill * tipPercentages[tipcontrol.selectedSegmentIndex]
        let total = bill + tip
        
        //calculate tip
        TipLabel.text = String(format:"$%.2f",tip)
        TotalLabel.text = String(format:"$%.2f", total)
        
    }
}

