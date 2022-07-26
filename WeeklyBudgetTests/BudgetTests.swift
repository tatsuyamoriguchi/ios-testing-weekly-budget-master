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
        
        let amounts: [Decimal] = [0,1,2,123]

        amounts.forEach { amount in
            let budget = Budget(total: amount)
            XCTAssertEqual(budget.weeklyRemaining, amount)
            
        }
    
    }
    
    func testBudgetContainsDailyRemaining() {
       
        let amounts: [Decimal] = [0, 1, 14, 70]

        amounts.forEach { amount in
            let budget = Budget(total: amount)
            XCTAssertEqual(budget.dailyRemaining, amount/7, "Daily Remining is not \(amount)/7")
            
        }
        
    }
    
    func testTransactionDeductsFromWeeklyRemaining() {
        let budget = Budget(total: 10)
        // Ignore timestamp for now
        budget.addTransaction(amount: 0, timestamp: Date())
        XCTAssertEqual(budget.weeklyRemaining, 10)
        
        budget.addTransaction(amount: 1, timestamp: Date())
        XCTAssertEqual(budget.weeklyRemaining, 9)
        
        budget.addTransaction(amount: 2, timestamp: Date())
        XCTAssertEqual(budget.weeklyRemaining, 7)
        
    }
    
    func testTransactionDeductFromDailyRemaining() {
        
        let budget = Budget(total: 70)
        // Ignore timestamp for now
        budget.addTransaction(amount: 0, timestamp: Date())
        XCTAssertEqual(budget.dailyRemaining, 10)

        budget.addTransaction(amount: 1, timestamp: Date())
        XCTAssertEqual(budget.dailyRemaining, 9)

        budget.addTransaction(amount: 2, timestamp: Date())
        XCTAssertEqual(budget.dailyRemaining, 7)

        
    }
    
    


}
