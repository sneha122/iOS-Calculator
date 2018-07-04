//
//  ViewController.swift
//  CalculatorSne
//
//  Created by admin on 12/12/17.
//  Copyright © 2017 jui. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var middleOfTyping = false
    
    @IBAction func testPrint(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if middleOfTyping
        {
            
            let num = labelnum.text!
            labelnum.text = num + digit
         }
        else
        {
            labelnum.text = digit
            middleOfTyping = true
        }
    }

    
    var resultValue : Double{
        get{
            return Double(labelnum.text!)!
        }
        set{
            labelnum.text=String(newValue)
        }
    }
    
    @IBOutlet weak var labelnum: UILabel!
    
    @IBAction func squareroot(_ sender: UIButton) {
        resultValue = sqrt(resultValue)
        middleOfTyping = false
    }
    var digit1 = 0.0
    var digit2 = 0.0
    var op = "0"
    @IBAction func multiply(_ sender: UIButton) {
            digit1 = resultValue
            op = sender.currentTitle!
            middleOfTyping = false
            }
    
    @IBAction func calculate(_ sender: UIButton) {
        digit2 = resultValue
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
}
