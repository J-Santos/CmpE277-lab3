//
//  SubstractionViewController.swift
//  CmpE-277-Lab-3
//
//  Created by Fabrizio on 12/13/16.
//  Copyright © 2016 CmpE. All rights reserved.
//

import UIKit

class SubstractionViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var firstOperand: UILabel!
    @IBOutlet var secondOperand: UILabel!
    @IBOutlet var numberQuestion: UILabel!
    @IBOutlet var resultTextField: UITextField!
    var inputResult : Int?{
        didSet{
            verifyValue()
        }
    }
    var result : Int?
    var number : Int = 0
    var numberCorrectAnswers : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //resultTextField.delegate = self
        generateRandomValues()
        
    }
    
    func generateRandomValues(){
        number += 1
        let firstInt : Int = Int(arc4random_uniform(9))
        let secondInt : Int = Int(arc4random_uniform(9))
        self.firstOperand.text = String(firstInt)
        self.secondOperand.text = String(secondInt)
        self.numberQuestion.text = "\(number)/10"
        result = firstInt - secondInt
        resultTextField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.becomeFirstResponder()
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func additionOperation(_ sender: UIButton) {
        print("Addition button was pressed")
    }
    
    @IBAction func subtractionOperation(_ sender: UIButton) {
        print("Subtraction button was pressed")
    }
    
    @IBAction func multiplyOperation(_ sender: UIButton) {
        print("Multiplication button was pressed")
    }
    
    @IBAction func farenheitFieldEditingText(textField: UITextField){
        if let text = textField.text, let value = Int(text){
            inputResult = value
        }else{
            inputResult = nil
        }
    }
    
    func verifyValue(){
        print("Verifying value");
        if result == inputResult{
            numberCorrectAnswers += 1;
            generateRandomValues()
        }
    }
    
    
    
}

