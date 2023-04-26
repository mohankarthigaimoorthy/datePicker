//
//  ViewController.swift
//  DatePicker
//
//  Created by Mohan K on 12/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    let inputTextField = UITextField()

//    @IBOutlet weak var date: UIDatePicker!

    
    @IBOutlet weak var time: UIDatePicker!
   
    let dateFormatter = DateFormatter()
        
       
        override func viewDidLoad() {
            super.viewDidLoad()
            
            dateFormatter.dateFormat = "MM/dd/yyyy"
            inputTextField.inputView =  time
            time.datePickerMode = .date
            inputTextField.text = dateFormatter.string(from: time.date)
            
            inputTextField.frame = CGRect(x: 50, y: 150, width: 200, height: 50)
           
            inputTextField.textAlignment = .center
            
            inputTextField.textColor = UIColor.black
            
            inputTextField.isHighlighted = true
            
            view.addSubview(inputTextField)
        }
        
    func datePickerValueChanged(_ sender: UIDatePicker) {
              
            inputTextField.text = dateFormatter.string(from: sender.date)
            view.endEditing(true)
        
        }
        
    }
    

