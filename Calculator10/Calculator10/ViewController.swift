//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Аружан on 2/22/20.
//  Copyright © 2020 Аружан. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let model = Model()
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func numberPressed(_ sender: UIButton) {
        guard
            let numberText = sender.titleLabel?.text
        else { return }
        if resultLabel.text == "0" || resultLabel.text == "0.0"{
            resultLabel.text?.removeAll()
            resultLabel.text?.append(String(numberText))
        }else{
            resultLabel.text?.append(String(numberText))
        }
    }
    
    
    @IBAction func operationPressed(_ sender: UIButton) {
        guard
            let numberText = resultLabel.text,
            let number = Double(numberText),
            let operation = sender.titleLabel?.text
        else {
            return
        }
        
        resultLabel.text = "0"
        model.setOperand(number: number)
        model.executeOperation(symbol: operation)
        if operation=="=" || operation=="AC" || operation=="%" || operation=="+/-"
        {
            resultLabel.text = "\(model.result)"
        }
    }
}


