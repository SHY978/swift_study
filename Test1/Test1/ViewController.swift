//
//  ViewController.swift
//  Test1
//
//  Created by DSC07 on 2023/03/30.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var imgView: UIImageView!
    
    var numImage : Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let imageName = String(numImage) + ".png"
        
        imgView.image = UIImage(named: imageName)
    }

    @IBAction func btnBefore(_ sender: UIButton) {
        if (numImage > 1){
            numImage = numImage - 1
        }
        else {
            numImage = 6
        }
        let imageName = String(numImage) + ".png"
        
        imgView.image = UIImage(named: imageName)
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        if (numImage == 6){
            numImage = 1
        }
        else {
            numImage = numImage + 1
        }
        let imageName = String(numImage) + ".png"
        
        imgView.image = UIImage(named: imageName)
    }
}

