//
//  Singleton.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Sandeep Jangra on 2019-10-31.
//  Copyright © 2019 Sandeep. All rights reserved.
//

//understood from Kuldeep


import Foundation

class Singleton: NSObject
{
     private var customerDictionary  = [Int:Customer]()
    
    private static var obj = Singleton()
    
    
    private override init() {
        
    }
    
    internal static func getInstance() -> Singleton
    {
        return obj
    }
    
    func addNewCustomer(First_Name : String, Last_Name : String, email : String)
    {
        let c = customerDictionary.count + 1
        
        let temp = Customer(customerID: c, customerFName: First_Name, customerLName: Last_Name, customerEmail: email)
        self.AddCustomer(customer: temp)
    }
    
    func returnCustObject(custID : Int) -> Customer?
    {
        for (k,v) in customerDictionary
        {
            if custID == k
            {
                return v
            }
        }
        return nil
        
    }
    
    func returnCount() -> Int
    {
        return customerDictionary.count
    }
    
    func createCust()
    {
        let b1: Mobile = Mobile(Id: 1, billDate: Date(), billType: billTypes.Mobile, totalBillAmount: 74.52, mobileManufacturer: "Apple", planName: "Freedom", mobileNumber: "9876543211", internetUsed: 45, minuteUsed: 56)
        let b2: Mobile = Mobile(Id: 2, billDate: Date(), billType: billTypes.Mobile, totalBillAmount: 56, mobileManufacturer: "Samsung", planName: "Rogers plan", mobileNumber: "1234567789", internetUsed: 34, minuteUsed: 222)
        
      
        let _: Internet = Internet(Id: 1, billDate: Date(), billType: billTypes.Internet, totalBillAmount: 23, providerName: "Freedom", internetUsed: 34)
        
        
        let _: Internet = Internet(Id: 2, billDate: Date(), billType: billTypes.Internet, totalBillAmount: 456.09, providerName: "Bell", internetUsed: 876)
        
        let b5: Hydro = Hydro(Id: 1, billDate: Date(), billType: billTypes.Hydro, totalBillAmount: 345.67, agencyName: "Brampton poer Energy", unitconsumed: 56)
        
        let b6: Hydro = Hydro(Id: 2, billDate: Date(), billType: billTypes.Hydro, totalBillAmount: 476.8, agencyName: "Power House", unitconsumed: 98)
        
    let c1 = Customer(customerID: 1, customerFName: "Gurlagan", customerLName: "Singh", customerEmail: "Singh@gmail.com ")
        AddCustomer(customer: c1)
        c1.addBill(Bill: b1)
       
        
        let c2 = Customer(customerID: 2, customerFName: "Simar", customerLName: "Singh", customerEmail: "Simar@gmail.com ")
        AddCustomer(customer: c2)
        
        c2.addBill(Bill: b1)
        c2.addBill(Bill: b2)
        c2.addBill(Bill: b6)
        
    
        let c3 = Customer(customerID: 3, customerFName: "Sandeep", customerLName: "Singh", customerEmail: "Sandeep@gmail.com ")
        AddCustomer(customer: c3)

        
        c3.addBill(Bill: b6)
        let c4 = Customer(customerID: 4, customerFName: "karan", customerLName: "kumar", customerEmail: "kumar@gmail.com ")
        
        AddCustomer(customer: c4)
        
        c3.addBill(Bill: b2)
        c4.addBill(Bill: b5)
        
        
        
        
        
        
        
    }
    
    

    
    func AddCustomer(customer: Customer)
    {
        customerDictionary.updateValue(customer, forKey: customer.customerID!)
    }
    func printdata()
    {
        for i in customerDictionary.values
        {
            print(i.customerFName!)
        }
    }
    

}
