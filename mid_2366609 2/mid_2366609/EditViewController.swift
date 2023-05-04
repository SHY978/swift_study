//
//  EditViewController.swift
//  mid_2366609
//
//  Created by DSC07 on 2023/04/20.
//

import UIKit
protocol EditDelegate {
    func didMessageEditDone(_ controller: EditViewController, message: String)
}

class EditViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    var delegate : EditDelegate?
    
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_CLOUMN = 1
    var imageArray = [UIImage?]()
    var imageFileNameSingle : String = ""
    var imageFileName = ["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg","9.jpg","10.jpg",]
    
    @IBOutlet weak var pickerImage: UIPickerView!
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for i in 0  ..< MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        
        imageView.image = imageArray[0]
    }
    
    @IBAction func btnDone(_ sender: Any) {
        if delegate != nil {
            delegate?.didMessageEditDone(self, message: imageFileNameSingle)
        }
        
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
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_CLOUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageFileName[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imageView.image = imageArray[row]
        imageFileNameSingle = imageFileName[row]
    }
    
}
