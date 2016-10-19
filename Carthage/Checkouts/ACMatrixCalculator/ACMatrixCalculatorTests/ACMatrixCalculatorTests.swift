//
//  ACMatrixCalculatorTests.swift
//  ACMatrixCalculatorTests
//
//  Created by Adriene on 5/3/16.
//  Copyright © 2016 Adriene Cuenco. All rights reserved.
//

import XCTest
@testable import ACMatrixCalculator

class ACMatrixCalculatorTests: XCTestCase {
    var op = ACMatrixCalculator()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testAdd() {
        let mA = [[ 1.0, 2.0], [3.0 , 4.0]]
        let mB = [[ 5.0, 6.0], [7.0 , 8.0]]

        let result = [[6.0, 8.0], [10.0,12.0]]
        
        
        XCTAssertEqual(op.mAdd(mA, b: mB), result)
        
    }
    func testSub() {
        let mA = [[ 5.0, 4.0], [7.0 , 8.0]]
        let mB = [[ 3.0, 2.0], [3.0 , 4.0]]
        
        let result = [[2.0, 2.0], [4.0, 4.0]]
        

        XCTAssertEqual(op.mSub(mA, b: mB), result)
        
    }
    func testMult() {
        let mA = [[ 5.0, 4.0],
                  [7.0 , 8.0]]
        
        let mB = [[ 3.0, 2.0],
                   [3.0 , 4.0]]
        
        let result = [[27.0, 26.0],
                      [45.0, 46.0]]
        
        let mA_2 = [[ 5.0, 8.0, -4.0],
                  [6.0 , 9.0 ,-5.0],
                  [4.0, 7.0, -2.0]]
        
        let mB_2 = [[ 2.0],
                    [-3.0],
                    [1.0]]
        
        let result_2 = [[-18.0], [-20.0], [-15]]

        XCTAssertEqual(op.mMult(mA, b: mB), result)
        XCTAssertEqual(op.mMult(mA_2, b: mB_2), result_2)
    }
    
    func testValidate() {
        let mA = [[ 5.0, 4.0], [7.0 , 8.0]]
        let mB = [[ 3.0, 2.0], [3.0 , 4.0]]
        
        let mA2 = [[ 5.0, 4.0, 3.0], [7.0 , 8.0, 3.0]]
        let mB2 = [[ 3.0, 2.0], [3.0 , 4.0]]
        
        XCTAssertTrue(op.addSubValidate(mA, b: mB))
        XCTAssertFalse(op.addSubValidate(mA2, b: mB2))
        
        XCTAssertTrue(op.multValidate(mA, b: mB))
        XCTAssertFalse(op.multValidate(mA2, b: mB2))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
