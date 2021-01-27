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
    
    var tipCalculator = TipCalculator(amountBeforeTax:  0, tipPercentage: 0.1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amountBeforeTaxTextField.becomeFirstResponder()
    }
    
    func calculateTip(){
        
    }
    
    func updateUI(){
        
    }
    
    
    
    @IBAction func tipSliderValueChanged(sender: Any){
        tipPercentageLabel.text = String(format: "Tip: %02d%%", Int(tipPercentageSlider.value))
        calculateTip()
    }
    
    @IBAction func numOfPeopleSliderValueChanged(sender: Any){
        numOfPeopleLabel.text = String(format: "Split: %2d", Int(numOfPeopleSlider.value))
    }
    
    @IBAction func amountBeforeTaxTextfieldChanged(sender: Any){
        calculateTip()
    }
}
