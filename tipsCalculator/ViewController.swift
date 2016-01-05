//
//  ViewController.swift
//  tipsCalculator
//
//  Created by KaKin Chiu on 12/9/15.
//  Copyright © 2015 KaKinChiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLable: UILabel!
    @IBOutlet weak var totalLable: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var splitField: UITextField!
    @IBOutlet weak var youPayLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        tipLable.text = "$0.00"
        totalLable.text = "$0.00"
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.15, 0.2, 0.25]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var billAmount = NSString(string: billField.text!).doubleValue
        var tip = billAmount*tipPercentage
        var total = billAmount + tip
        var numberOfOPeopleToSplit = NSString(string: splitField.text!).doubleValue
        var youPayAmount = total / numberOfOPeopleToSplit

        tipLable.text = String(format: "$%.2f", tip)
        totalLable.text = String(format: "$%.2f", total)
        
    
        youPayLable.text = String(format: "$%.2f", youPayAmount)
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    
}

