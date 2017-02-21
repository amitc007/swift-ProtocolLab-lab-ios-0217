//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
    
}

protocol ProvideAccess {
    func allowEntryWithPassword(_ pass:[Int])->Bool
    
}

extension BankVault: ProvideAccess {
    func allowEntryWithPassword(_ pass: [Int]) -> Bool {
        switch pass.count {
            case 1...10 : return validate(pass: pass)
            default : return false
        }
        
        //return false
    }
    
    func validate(pass:[Int])->Bool {
        for (idx,val) in pass.enumerated() {
            if (idx+1)%2 == 1 {
                if val%2 != 0  { return false  }
            }
        }
        return true
    }
    
}

