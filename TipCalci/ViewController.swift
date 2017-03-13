//
//  ViewController.swift
//  TipCalci
//
//  Created by Agrawal, Apoorv on 3/6/17.
//  Copyright © 2017 Apoorv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!

    @IBOutlet weak var tipC: UISegmentedControl!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        
        print("hello");
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [0.1,0.2,0.25]
        
        let bill=Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipC.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text=String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

