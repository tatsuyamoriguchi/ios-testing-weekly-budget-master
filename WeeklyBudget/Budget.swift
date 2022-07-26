//
//  Budget.swift
//  WeeklyBudget
//
//  Created by Tatsuya Moriguchi on 7/26/22.
//  Copyright © 2022 meech-ward. All rights reserved.
//

import Foundation

class Budget {
    
    // To prevent variables below modified from outside
    var weeklyRemaining: Decimal {
        return _weeklyRemaining
    }
    var dailyRemaining: Decimal {
        return _dailyRemaining
    }

    private var _weeklyRemaining: Decimal
    private var _dailyRemaining: Decimal



    init(total: Decimal) {
        
        _weeklyRemaining = total
        _dailyRemaining = total/7
    }
    
    func addTransaction(amount: Decimal, timestamp: Date) {
        _weeklyRemaining -= amount
        _dailyRemaining -= amount
    }
}
