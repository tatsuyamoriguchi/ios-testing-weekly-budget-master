//
//  ViewControllerTests.swift
//  WeeklyBudgetTests
//
//  Created by Tatsuya Moriguchi on 7/27/22.
//  Copyright © 2022 meech-ward. All rights reserved.
//

import XCTest
@testable import WeeklyBudget

class ViewControllerTests: XCTestCase {

    var viewController: ViewController!
    
    override func setUp() {
        viewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? ViewController
        _ = viewController.view
    
    }
    
    func testCreatingANewBudgetUpdatesRemainingLabels() {
        let textField = viewController.totalBudgetTextField!
        textField.text = "100"
        _ = textField.delegate?.textFieldShouldReturn?(textField)
        
        let budget = viewController.budget
        XCTAssertEqual(viewController.weeklyRemaininglabel.text, budget?.weeklyRemaining.moneyString)
        XCTAssertEqual(viewController.todayRemaininglabel.text, budget?.dailyRemaining.moneyString)

        
    }
    
    func testCreatingANewTransactionUpdatesRemainingLabels() {
        let budget = Budget(total: 70)
        budget.addTransaction(amount: 5, timestamp: Date())

        let textField1 = viewController.totalBudgetTextField!
        textField1.text = "70"
        _ = textField1.delegate?.textFieldShouldReturn?(textField1)
        
        let textField2 = viewController.transactionTextField!
        textField2.text = "5"
        _ = textField2.delegate?.textFieldShouldReturn?(textField2)
        
        XCTAssertEqual(viewController.weeklyRemaininglabel.text, budget.weeklyRemaining.moneyString)
        XCTAssertEqual(viewController.todayRemaininglabel.text, budget.dailyRemaining.moneyString)

    }
    
    

}
