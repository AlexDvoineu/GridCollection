//
//  GridCellTestsEdgeCases.swift
//  GridCollectionTests
//
//  Created by Aliaksandr Dvoineu on 29.07.22.
//

import XCTest
@testable import GridCollection

class GridCellTestsEdgeCases: XCTestCase {
    
    var scaleableArray = GridCellArray()
    
}

// MARK: - Test selected index max

extension GridCellTestsEdgeCases {
    
    func testEmptyArray_selectedIndex_max() throws {
        scaleableArray.selectedIndex = Int.max
        scaleableArray.calculateNewValues(0)
        
        XCTAssertTrue(scaleableArray.scaledValues.isEmpty)
    }
    
    func testFilledArray_selectedIndex_max() throws {
        let values: [CGFloat] = [0.3, 0.2, 0.5]
        scaleableArray.selectedIndex = Int.max
        scaleableArray.values = values
        scaleableArray.calculateNewValues(0)

        XCTAssertEqual(scaleableArray.scaledValues, values)
    }
    
}

// MARK: - Tests Empty Array

extension GridCellTestsEdgeCases {

    func testEmptyValues_withZeroFactor() throws {
        scaleableArray.calculateNewValues(0)
        
        XCTAssertTrue(scaleableArray.scaledValues.isEmpty)
    }

    func testEmptyValues_negativeGreatestFactor() throws {
        scaleableArray.calculateNewValues(-Double.greatestFiniteMagnitude)

        XCTAssertTrue(scaleableArray.scaledValues.isEmpty)
    }

    func testEmptyValues_greatestFactor() throws {
        scaleableArray.calculateNewValues(Double.greatestFiniteMagnitude)

        XCTAssertTrue(scaleableArray.scaledValues.isEmpty)
    }

}
