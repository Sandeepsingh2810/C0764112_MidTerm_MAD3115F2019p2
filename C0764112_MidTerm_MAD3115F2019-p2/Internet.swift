//
//  Internet.swift
//  C0764112_MidTerm_MAD3115F2019-p2
//
//  Created by Sandeep Jangra on 2019-11-09.
//  Copyright © 2019 Sandeep. All rights reserved.
//

import Foundation

class Internet: Bill
{
    var providerName: String
    var internetUsed: Int
    
    init(Id: Int, billDate: Date, billType: billTypes, totalBillAmount: Float, providerName: String, internetUsed: Int)
    {
        self.providerName = providerName
        self.internetUsed = internetUsed
        
        super.init(Id: Id, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    }
}
