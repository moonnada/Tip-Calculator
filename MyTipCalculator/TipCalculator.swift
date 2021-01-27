//
//  TipCalculator.swift
//  MyTipCalculator
//
//  Created by Byung Moon Kim on 1/26/21.
//

import Foundation

class TipCalculator{
    var amountBeforeTax: Double = 0
    var tipAmount: Double = 0
    var tipPercentage: Double = 0
    var totalAmount: Double = 0
    
    init(amountBeforeTax: Double, tipPercentage: Double){
        self.amountBeforeTax = amountBeforeTax
        self.tipPercentage = tipPercentage
    }
    func calculatorTip(){
        tipAmount = amountBeforeTax * tipPercentage
        totalAmount = tipAmount + amountBeforeTax
    }

}

