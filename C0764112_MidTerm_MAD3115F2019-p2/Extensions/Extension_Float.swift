//
//  Extension_Float.swift
//  C0751093_MidTerm_MAD3115S2019
//
//  Created by Sandeep Jangra on 2019-07-11.
//  Copyright © Sandeep. All rights reserved.
//

import Foundation

extension Float
{
    public func currency() -> String
    {
        return String.init(format: "$%0.2f", self)
    }
}
