//
//  DetailViewController.swift
//  final_2366609
//
//  Created by DSC07 on 2023/06/15.
//

import UIKit

class DetailViewController: UIViewController {
    
    var receiveItem = ""
    var img : UIImage?
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var lblItem: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblItem.text = receiveItem
        self.imgView.image = img
        
        // Do any additional setup after loading the view.
    }
    
    func receiveItem(_ item: String){
        receiveItem = item
    }
   

    @IBAction func btn(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
