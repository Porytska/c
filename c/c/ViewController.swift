//
//  ViewController.swift
//  c
//
//  Created by Людмилко on 30.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var IuNumberShow: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var newOperation = true
    func addNumberToInput(number:String)  {
        var textNumber = String(IuNumberShow.text!)
        if newOperation {
            textNumber = ""
            newOperation = false
        }
        textNumber = textNumber + number
        IuNumberShow.text = textNumber
    }
    
    @IBAction func button0(_ sender: Any) {
        addNumberToInput(number: "0")
    }
    
    @IBAction func button1(_ sender: Any) {
        addNumberToInput(number: "1")
    }
    
    @IBAction func button2(_ sender: Any) {
        addNumberToInput(number: "2")
    }
    
    @IBAction func button3(_ sender: Any) {
        addNumberToInput(number: "3")
    }
    
    @IBAction func button4(_ sender: Any) {
        addNumberToInput(number: "4")
    }
    
    @IBAction func button5(_ sender: Any) {
        addNumberToInput(number: "5")
    }
    
    @IBAction func button6(_ sender: Any) {
        addNumberToInput(number: "6")
    }
    
    @IBAction func button7(_ sender: Any) {
        addNumberToInput(number: "7")
    }
    
    @IBAction func button8(_ sender: Any) {
        addNumberToInput(number: "8")
    }
    
    @IBAction func button9(_ sender: Any) {
        addNumberToInput(number: "9")
    }
    
    @IBAction func buttonDot(_ sender: Any) {
        addNumberToInput(number: ".")
    }
    
    
    var operation = "+"
    var number1:Double?
    @IBAction func buttonMuliply(_ sender: Any) {
        operation = "*"
        number1 = Double(IuNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func buttonDivision(_ sender: Any) {
        operation = "/"
        number1 = Double(IuNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func buttonSubstraction(_ sender: Any) {
        operation = "-"
        number1 = Double(IuNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func buttonAddition(_ sender: Any) {
        operation = "+"
        number1 = Double(IuNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func buttonClean(_ sender: Any) {
        IuNumberShow.text = "0"
        newOperation = true
    }
    
    @IBAction func buttonChangeSign(_ sender: Any) {
        var textNumber = String(IuNumberShow.text!)
        textNumber = "-" + textNumber
        IuNumberShow.text = textNumber
        
    }
    
    @IBAction func buttonPercent(_ sender: Any) {
        var number1 = Double(IuNumberShow.text!)
        
        number1 = number1!/Double(100)
        IuNumberShow.text = String(number1!)
        newOperation = true
    }
    
    @IBAction func buttonEqual(_ sender: Any) {
        let number2 = Double(IuNumberShow.text!)
        var result:Double?
        switch operation {
        case "*":
            result = number1! * number2!
        case "/":
            result = number1! / number2!
        case "-":
            result = number1! - number2!
        case "+":
            result = number1! + number2!
        default:
            result = 0.0
        }
        IuNumberShow.text = String(result!)
        newOperation = true
    }
    
}

