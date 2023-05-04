//
//  ViewController.swift
//  ex0309
//
//  Created by DSC07 on 2023/03/09.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblHello: UILabel!
   
    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend(_ sender: UIButton) {
        lblHello.text = "Hello, " + txtName.text!

    }
    
}

