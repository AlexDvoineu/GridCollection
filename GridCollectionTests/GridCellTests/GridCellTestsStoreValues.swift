//
//  GridCellTestsStoreValues.swift
//  GridCollectionTests
//
//  Created by Aliaksandr Dvoineu on 29.07.22.
//

import XCTest

@testable import GridCollection

class GridCellTestsStoreValues: XCTestCase {
    
    func testStoreValues_emptyValues() {
        let scaleableArray = GridCellArray()
        scaleableArray.storeValues(0)
        XCTAssertTrue(scaleableArray.values.isEmpty)
    }
    
    func testStoredValues() {
        let scaleableArray = GridCellArray(minValue: 0)
        let value = 1.0 / 4.0
        scaleableArray.values = [CGFloat](repeating: value, count: 4)
        scaleableArray.calculateNewValues(0.5)
        scaleableArray.storeValues(0.5)
        XCTAssertEqual(scaleableArray.values.sum().roundedValue, "1.00")
        
    }
}
