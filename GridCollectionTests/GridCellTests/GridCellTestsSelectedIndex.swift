//
//  GridCellTestsSelectedIndex.swift
//  GridCollectionTests
//
//  Created by Aliaksandr Dvoineu on 29.07.22.
//

import XCTest
@testable import GridCollection

class GridCellTestsSelectedIndex: XCTestCase {
    
    var scaleableArray = GridCellArray()
    
    override func setUpWithError() throws {
        quadGrid()
    }
    
    private func quadGrid() {
        let value = 1.0 / 4.0
        scaleableArray.values = [CGFloat](repeating: value, count: 4)
    }
    
    func testTribble_selectedIndex_pos3_start() throws {
        XCTAssertEqual(3, scaleableArray.getSelectedIndex(maxSize: 400, selectedPos: 300))
    }
    
    func testTribble_selectedIndex_pos3_end() throws {
        XCTAssertEqual(3, scaleableArray.getSelectedIndex(maxSize: 400, selectedPos: 399))
    }
    
    func testTribble_selectedIndex_pos0_start() throws {
        XCTAssertEqual(0, scaleableArray.getSelectedIndex(maxSize: 400, selectedPos: 0))
    }
    
    func testTribble_selectedIndex_pos0_end() throws {
        XCTAssertEqual(0, scaleableArray.getSelectedIndex(maxSize: 400, selectedPos: 99))
    }
    
    func testTribble_selectedIndex_pos1_start() throws {
        XCTAssertEqual(1, scaleableArray.getSelectedIndex(maxSize: 400, selectedPos: 100))
    }
    
    func testTribble_selectedIndex_pos1_end() throws {
        XCTAssertEqual(1, scaleableArray.getSelectedIndex(maxSize: 400, selectedPos: 199))
    }
    
}
