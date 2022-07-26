//
//  BudgetTests.swift
//  WeeklyBudgetTests
//
//  Created by Tatsuya Moriguchi on 7/26/22.
//  Copyright © 2022 meech-ward. All rights reserved.
//

import XCTest
@testable import WeeklyBudget

class BudgetTests: XCTestCase {
    
    func testBudgetContainsWeeklyRemaining() {
        
//        let amounts: [Decimal] = [0,1,2,123]
//        
//        amounts.forEach { amount in
//            let budget = Budget(total: amount)
//            XCTAssertEqual(budget.weeklyRemaining, 0)
//            
//        }
        
        var budget = Budget(total: 0)
        XCTAssertEqual(budget.weeklyRemaining, 0)
        
        budget = Budget(total: 1)
        XCTAssertEqual(budget.weeklyRemaining, 1)
        
        budget = Budget(total: 123)
        XCTAssertEqual(budget.weeklyRemaining, 123)

    }
    
    func testBudgetContainsDailyRemaining() {
        
    }
    
    func testTransactionDeductsFromWeeklyRemaining() {
        
    }
    
    func testTransactionDeductFromDailyRemaining() {
        
    }
    
    


}
