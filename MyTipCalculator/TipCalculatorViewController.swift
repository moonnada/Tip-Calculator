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
    
    @IBOutlet weak var eachPersonAmountLabel:
        UILabel!
    @IBOutlet weak var totalResultLabel:
        UILabel!
    
    var tipCalculator = TipCalculator(amountBeforeTax:  0, tipPercentage: 0.1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amountBeforeTaxTextField.becomeFirstResponder()
    }
    
    func calculateBill(){
        tipCalculator.tipPercentage = Double(tipPercentageSlider.value)/100.0
        tipCalculator.amountBeforeTax = (amountBeforeTaxTextField.text! as NSString).doubleValue
        tipCalculator.calculatorTip()
        updateUI()
    }
    
    func updateUI(){
        totalResultLabel.text = String(format: "$%0.2f", tipCalculator.totalAmount)
        let numberOfPeople: Int = Int(numOfPeopleSlider.value)
        eachPersonAmountLabel.text = String(format: "$%0.2f",tipCalculator.totalAmount / Double(numberOfPeople))
    }
    
    
    
    @IBAction func tipSliderValueChanged(sender: Any){
        tipPercentageLabel.text = String(format: "Tip: %02d%%", Int(tipPercentageSlider.value))
        calculateBill()
    }
    
    @IBAction func numOfPeopleSliderValueChanged(sender: Any){
        numOfPeopleLabel.text = String(format: "Split: %2d", Int(numOfPeopleSlider.value))
        calculateBill()
    }
    
   
    
    
    @IBAction func amountBeforeTaxTextfieldChanged(sender: Any){
        calculateBill()
    }
}
