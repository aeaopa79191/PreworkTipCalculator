//
//  SettingViewController.swift
//  tipsCalculator
//
//  Created by KaKin Chiu on 12/15/15.
//  Copyright © 2015 KaKinChiu. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    @IBOutlet weak var lowTip: UITextField!
    @IBOutlet weak var midTip: UITextField!
    @IBOutlet weak var highTip: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEditingChanges(sender: AnyObject) {
        var lowTipAmount = NSString(string: lowTip.text!).doubleValue
        var midTipAmount = NSString(string: midTip.text!).doubleValue
        var highTipAmount = NSString(string: highTip.text!).doubleValue
    }

 



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
