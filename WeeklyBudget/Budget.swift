//
//  Budget.swift
//  WeeklyBudget
//
//  Created by Tatsuya Moriguchi on 7/26/22.
//  Copyright © 2022 meech-ward. All rights reserved.
//

import Foundation

class Budget {
    var weeklyRemaining: Decimal
    var dailyRemaining: Decimal
    init(total: Decimal) {
        
        weeklyRemaining = total
        dailyRemaining = total/7
    }
    
    func addTransaction(amount: Decimal, timestamp: Date) {
        weeklyRemaining -= amount
        dailyRemaining -= amount
    }
}
