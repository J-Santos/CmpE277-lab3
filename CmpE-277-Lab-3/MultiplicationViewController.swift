//
//  MultiplicationViewController.swift
//  CmpE-277-Lab-3
//
//  Created by Fabrizio on 12/13/16.
//  Copyright © 2016 CmpE. All rights reserved.
//

import UIKit

class MultiplicationViewController: UIViewController,UITextFieldDelegate {
    
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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        number = 0;
        numberCorrectAnswers = 0
        generateRandomValues()
    }

    
    func generateRandomValues(){
        if(number == 10){
            print("Your total score was: \(numberCorrectAnswers)/10")
            let msg = "Your total score was: \(numberCorrectAnswers)/10"
            let alertController = UIAlertController(title: "Score", message: msg, preferredStyle: .alert)
            
            let actionYes = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
                _ = self.navigationController?.popViewController(animated: true)
                print("You've pressed the Yes button");
            }
            
            alertController.addAction(actionYes)
            self.present(alertController, animated: true, completion:nil)
        }else{
            number += 1
            let firstInt : Int = Int(arc4random_uniform(9))
            let secondInt : Int = Int(arc4random_uniform(9))
            self.firstOperand.text = String(firstInt)
            self.secondOperand.text = String(secondInt)
            self.numberQuestion.text = "Question \(number) out of 10."
            result = firstInt * secondInt
            resultTextField.text = ""
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.becomeFirstResponder()
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*@IBAction func farenheitFieldEditingText(textField: UITextField){
        if let text = textField.text, let value = Int(text){
            inputResult = value
        }else{
            inputResult = nil
        }
    }*/
    
    func verifyValue(){
        print("Verifying value");
        if result == inputResult{
            numberCorrectAnswers += 1;
            generateRandomValues()
        }
    }
    
    func setDisplayText(str: String) -> Void {
        let current_text = resultTextField.text
        let new_value = current_text! + str
        resultTextField.text = new_value
        inputResult = Int(new_value)
    }
    
    @IBAction func numberSeven(_ sender: Any) {
        setDisplayText(str: String(7))
        print("Number Seven was pressed")
    }
    
    @IBAction func numberEight(_ sender: Any) {
        setDisplayText(str: String(8))
        print("Number Eight was pressed")
    }
    
    @IBAction func numberNine(_ sender: Any) {
        setDisplayText(str: String(9))
        print("Number Nine was pressed")
    }
    
    @IBAction func numberFour(_ sender: Any) {
        setDisplayText(str: String(4))
        print("Number Four was pressed")
    }
    
    @IBAction func numberFive(_ sender: Any) {
        setDisplayText(str: String(5))
        print("Number Five was pressed")
    }

    @IBAction func numberSix(_ sender: Any) {
        setDisplayText(str: String(6))
        print("Number Six was pressed")
    }
    
    @IBAction func numberOne(_ sender: Any) {
        setDisplayText(str: String(1))
        print("Number One was pressed")
    }
    
    @IBAction func numberTwo(_ sender: Any) {
        setDisplayText(str: String(2))
        print("Number Two was pressed")
    }
    
    @IBAction func numberThree(_ sender: Any) {
        setDisplayText(str: String(3))
        print("Number Three was pressed")
    }
    
    @IBAction func numberClear(_ sender: Any) {
        resultTextField.text = ""
        print("Number Clear was pressed")
    }
    
    @IBAction func numberZero(_ sender: Any) {
        setDisplayText(str: String(0))
        print("Number Zero was pressed")
    }
    
    @IBAction func numberEnter(_ sender: Any) {
        print("Number Enter was pressed")
        let current_val = Int(resultTextField.text!)
        if(result == current_val){
            numberCorrectAnswers += 1;
        }
        generateRandomValues()
    }
    
}

