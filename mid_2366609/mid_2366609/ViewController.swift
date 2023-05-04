//
//  ViewController.swift
//  mid_2366609
//
//  Created by DSC07 on 2023/04/20.
//

import UIKit

class ViewController: UIViewController, EditDelegate{

    @IBOutlet weak var imageLbl: UILabel!
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let editViewController = segue.destination as! EditViewController
        
        editViewController.delegate = self
    }
    
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        imageLbl.text = message
    }
}

