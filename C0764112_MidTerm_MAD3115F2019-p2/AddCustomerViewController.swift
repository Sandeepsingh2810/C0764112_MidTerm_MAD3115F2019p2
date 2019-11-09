//
//  AddCustomerViewController.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Sandeep Jangra on 2019-11-01.
//  Copyright © 2019 Sandeep. All rights reserved.
//

import UIKit

class AddCustomerViewController: UIViewController {

    
      let a = Singleton.getInstance()
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    
   // @IBAction func btnsave(_ sender: UIBarButtonItem)
    private func saveCustomerButton()
    {
     let btnSave=UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(AddCustomerViewController.saveCustomer(sender:)))
        
        navigationItem.rightBarButtonItem=btnSave
    }
    
    @objc
    func saveCustomer(sender: UIBarButtonItem)
    {
        //print("Customer Added")
     let sb1=UIStoryboard(name: "Main", bundle: nil)
        _=sb1.instantiateViewController(identifier: "customerListVC") as! CustomerListViewController
      
    
    
        let fName = txtFirstName.text
        let lName = txtLastName.text
        
        if isValidEmail()
            
               {
               
                   let email = txtEmail.text
                   a.addNewCustomer(First_Name: fName!, Last_Name: lName!, email: email!)
                   
                   let alert = UIAlertController(title: "DONE", message: "Added Successfully", preferredStyle: .alert)

                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(alert: UIAlertAction!) in self.navigationController?.popViewController(animated: true)}))
                   
                
                   self.present(alert, animated: true)
               }
               else{
                   
                   let alert = UIAlertController(title: "INVALID EMAIL!", message: "Re - Enter  Email Address", preferredStyle: .alert)

                   alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                   
                   self.present(alert, animated: true)
                   
               }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveCustomerButton()
    }
    
  
    func isValidEmail() -> Bool {
           let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

           let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
           return emailPred.evaluate(with: txtEmail.text!)
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
