//
//  ViewController.swift
//  ex0406_test
//
//  Created by DSC07 on 2023/04/06.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var uiLabel: UILabel!
    
    @IBOutlet weak var uiTextfield2: UITextField!
    
    @IBOutlet weak var uiTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func uiPlus(_ sender: Any) {
        if let num1 = uiTextField.text,
           let num2 = uiTextfield2.text {
            let num :Int  = Int(num1)! + Int(num2)!
            uiLabel.text = String(num)
            
        }
    }
    
    @IBAction func uiMinus(_ sender: UIButton) {
        if let num1 = uiTextField.text,
           let num2 = uiTextfield2.text {
            let num :Int  = Int(num1)! - Int(num2)!
            uiLabel.text = String(num)
            
        }
    }
    

}

