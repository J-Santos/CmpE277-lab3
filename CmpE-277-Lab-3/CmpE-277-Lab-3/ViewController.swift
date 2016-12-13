//
//  ViewController.swift
//  CmpE-277-Lab-3
//
//  Created by Jelson Santos on 12/11/16.
//  Copyright © 2016 CmpE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var addButton: UIButton!
    @IBOutlet var subtractionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
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

    
    
}

