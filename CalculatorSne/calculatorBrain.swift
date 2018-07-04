//
//  calculatorBrain.swift
//  CalculatorSne
//
//  Created by admin on 14/12/17.
//  Copyright © 2017 jui. All rights reserved.
//

import Foundation

class calculatorBrain{
    
    var digit1 = 0.0
    var digit2 = 0.0
    
    var op = "0"
    var resultValue: Double?
    var middleOfTyping = false

    func calculate(_ symbol: String) -> Double {
        switch(op){
        case "+":
            resultValue = digit1+digit2
            middleOfTyping = false
        case "-":
            resultValue = digit1-digit2
            middleOfTyping = false
        case "*":
            resultValue = digit1*digit2
            middleOfTyping = false
        case "/":
            resultValue = digit1/digit2
            middleOfTyping = false
        default:
            print("invalid")
        }
        
    }
    return resultValue

}
