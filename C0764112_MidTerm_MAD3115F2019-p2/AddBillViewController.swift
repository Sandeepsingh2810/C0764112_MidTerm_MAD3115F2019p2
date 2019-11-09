//
//  AddBillViewController.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Sandeep Jangra on 2019-11-08.
//  Copyright © 2019 Sandeep. All rights reserved.
//

import UIKit

class AddBillViewController: UIViewController {

    @IBOutlet weak var txtDate: UITextField!
    @IBOutlet weak var txtTotalAmount: UITextField!
   
    
    let datePicker = UIDatePicker()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.showDatePicker()
        
    
        
        let rightButton = UIBarButtonItem(title: "Save", style: UIBarButtonItem.Style.plain,
        target: self, action: #selector(   self.saveBill))
        self.navigationItem.rightBarButtonItem = rightButton
      
   
        self.txtDate.resignFirstResponder()
  
    }
    
    
  
    func showDatePicker(){
      
        
       
        datePicker.datePickerMode = .date
    
      
        
        txtDate.inputView = datePicker
        
    }
    
    @objc func donedatePicker(){
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        txtDate.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    @objc func cancelDatePicker(){
        self.view.endEditing(true)
    }
    
    @objc func saveBill(sender: UIBarButtonItem)
    {
    

       
        self.navigationController?.popViewController(animated: true)
    }
 
    

    


}
