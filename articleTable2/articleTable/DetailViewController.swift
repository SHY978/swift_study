//
//  DetailViewController.swift
//  articleTable
//
//  Created by DSC07 on 2023/06/01.
//

import UIKit

class DetailViewController: UIViewController {
    
    var article : Article?
    var img : UIImage?
    
    @IBOutlet weak var lblDetailTitle: UILabel!
    
    @IBOutlet weak var ImgDetail: UIImageView!
    
    @IBOutlet weak var lblDetailContent: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let article = self.article{
            self.lblDetailTitle.text = article.title!
            
            self.lblDetailContent.text = article.content!
            
            self.ImgDetail.image = img
        }
        // Do any additional setup after loading the view.
       
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
