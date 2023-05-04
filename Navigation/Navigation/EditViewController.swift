//
//  EditViewController.swift
//  Navigation
//
//  Created by DSC07 on 2023/04/13.
//

import UIKit

protocol EditDelegate{
    func didMessageEditDone(_ controller: EditViewController, message: String)
}

class EditViewController: UIViewController {
    var deletegate : EditDelegate?
    
    var textWayValue: String = ""
    
    @IBOutlet weak var lblWay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        lblWay.text = textWayValue
    }
    
    @IBAction func btnDone(_ sender: Any) {
        deletegate?.didMessageEditDone(self, message:"TEST")
        _ = navigationController?.popViewController(animated: true)
    }
    
}
