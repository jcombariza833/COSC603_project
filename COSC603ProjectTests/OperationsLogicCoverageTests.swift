//
//  OperationsTests.swift
//  COSC603ProjectTests
//
//  Created by JUAN PABLO COMBARIZA MEJIA on 5/7/21.
//

import XCTest

class OperationsLogicCoverageTests: XCTestCase {

    var operations = Operations()
    
    func testSmallestArrayEmpty() throws {
        XCTAssertTrue(operations.smallest(dataArray: []) == -1)
    }

    func testSmallestWithoutMin() throws {
        XCTAssertTrue(operations.smallest(dataArray: [10,10]) == 10)
    }
    
    func testSmallestWithMin() throws {
        XCTAssertTrue(operations.smallest(dataArray: [12,10]) == 10)
    }
    
    func testLargestArrayEmpty() throws {
        XCTAssertTrue(operations.largest(dataArray: []) == -1)
    }
    
    func testLargestWithoutMax() throws {
        XCTAssertTrue(operations.largest(dataArray: [5,4]) == 5)
    }
    
    func testLargesttWithMax() throws {
        XCTAssertTrue(operations.largest(dataArray: [10,15]) == 15)
    }
    
    func testAverageArrayEmpty() throws {
        XCTAssertTrue(operations.average([]) == -1)
    }
    
    func testAverage() throws {
        XCTAssertTrue(operations.average([6,4]) == 5)
    }
    
    func testSumArrayEmpty() throws {
        XCTAssertTrue(operations.sum([]) == -1)
    }
    
    func testSum() throws {
        XCTAssertTrue(operations.sum([6,4]) == 10)
    }
    
    func testGreaterThanAverageArrayEmpty() throws {
        XCTAssertTrue(operations.greaterThanAverage(dataArray:[]) == -1)
    }

    func testGreaterThanAverage() throws {
        XCTAssertTrue(operations.greaterThanAverage(dataArray: [6,4]) == 1)
    }
    
    func testNotGreaterThanAverage() throws {
        XCTAssertTrue(operations.greaterThanAverage(dataArray: [3,3]) == 0)
    }
    
    func testGreaterThanAverageAndEvenArrayEmpty() throws {
        XCTAssertTrue(operations.greaterThanAverageAndEven(dataArray:[]) == -1)
    }
    
    func testGreaterThanAverageAndEven() throws {
        XCTAssertTrue(operations.greaterThanAverageAndEven(dataArray: [6,4]) == 1)
    }
    
    func testNotGreaterThanAverageAndEven() throws {
        XCTAssertTrue(operations.greaterThanAverageAndEven(dataArray: [2,2]) == 0)
    }
    
    func testGreaterThanAverageAndNotEven() throws {
        XCTAssertTrue(operations.greaterThanAverageAndEven(dataArray: [5,3]) == 0)
    }
    
    func testGreaterThanAverageAndOddArrayEmpty() throws {
        XCTAssertTrue(operations.greaterThanAverageAndOdd(dataArray:[]) == -1)
    }
    
    func testGreaterThanAverageAndOdd() throws {
        XCTAssertTrue(operations.greaterThanAverageAndOdd(dataArray: [7,3]) == 1)
    }
    
    func testNotGreaterThanAverageAndOdd() throws {
        XCTAssertTrue(operations.greaterThanAverageAndOdd(dataArray: [3,3]) == 0)
    }
    
    func testGreaterThanAverageAndNotOdd() throws {
        XCTAssertTrue(operations.greaterThanAverageAndOdd(dataArray: [6,4]) == 0)
    }
    
    func testDifferenceArrayEmpty() throws {
        XCTAssertTrue(operations.difference(dataArray:[]) == -1)
    }

    func testDifference() throws {
        XCTAssertTrue(operations.difference(dataArray: [6,4]) == 2)
    }
    
    func testDifferenceNotZero() throws {
        XCTAssertTrue(operations.difference(dataArray: [3,3]) == 0)
    }
    
    func testMakeListLessThanZero() throws {
        XCTAssertTrue(operations.makeList(-1).isEmpty)
    }
    
    func testMakeList() throws {
        XCTAssertFalse(operations.makeList(2).isEmpty)
    }
    
    func testSelectionSortNotOrganize() throws {
        XCTAssertTrue(operations.selectionSort([2,1]) == [1,2])
    }
    
    func testSelectionSortOrganize() throws {
        XCTAssertTrue(operations.selectionSort([1,2]) == [1,2])
    }
}
