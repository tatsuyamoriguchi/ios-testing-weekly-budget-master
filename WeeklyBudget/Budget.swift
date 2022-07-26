//
//  Budget.swift
//  WeeklyBudget
//
//  Created by Tatsuya Moriguchi on 7/26/22.
//  Copyright © 2022 meech-ward. All rights reserved.
//

import Foundation

class Budget {
    let weeklyRemaining: Decimal
    init(total: Decimal) {
        
        weeklyRemaining = total
    }
}
