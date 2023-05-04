//
//  ViewController.swift
//  Navigation
//
//  Created by DSC07 on 2023/04/13.
//

import UIKit

class ViewController: UIViewController, EditDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        if segue.identifier == "editButton" {
            editViewController.textWayValue = "segu : use button"
        } else if segue.identifier == "editBarButton" {
            editViewController.textWayValue = "segu : use Bar button"
        }
        editViewController.deletegate = self
    }
    
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        print(message)
    }

}

