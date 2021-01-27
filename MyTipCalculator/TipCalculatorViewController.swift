//
//  TipCalculatorViewController.swift
//  MyTipCalculator
//
//  Created by Byung Moon Kim on 1/26/21.
//

import UIKit

class TipCalculatorViewController:
    UIViewController{
    
   
    @IBOutlet weak var amountBeforeTaxTextField:
        UITextField!
    @IBOutlet weak var tipPercentageLabel:
        UILabel!
    @IBOutlet weak var tipPercentageSlider:
        UISlider!
    @IBOutlet weak var numOfPeopleSlider:
        UISlider!
    @IBOutlet weak var numOfPeopleLabel:
        UILabel!
    
    @IBOutlet weak var eachPersonAmount:
        UILabel!
    @IBOutlet weak var totalResultLabel:
        UILabel!
    
}
