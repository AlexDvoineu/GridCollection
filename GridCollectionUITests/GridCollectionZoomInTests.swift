//
//  GridCollectionZoomInTests.swift
//  GridCollectionUITests
//
//  Created by Aliaksandr Dvoineu on 29.07.22.
//

import XCTest

class GridCollectionZoomInTests: XCTestCase {

    let app = XCUIApplication()
    let scale = 3.0
    let velocity = 18.0
    
    override func setUpWithError() throws {
        app.launch()
    }
    
    func testZoomInElement0() throws {
        // Scale element 0
        let scaledElement = app.collectionViewCell(0)
        scaledElement.pinch(withScale: scale, velocity: velocity)
        
        // Compare with 1
        let element1 = app.collectionViewCell(1)
        XCTAssertTrue(element1.frame.size.height == scaledElement.frame.size.height)
        XCTAssertTrue(element1.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 2
        let element2 = app.collectionViewCell(2)
        XCTAssertTrue(element2.frame.size.height == scaledElement.frame.size.height)
        XCTAssertTrue(element2.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 3
        let element3 = app.collectionViewCell(3)
        XCTAssertTrue(element3.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element3.frame.size.width == scaledElement.frame.size.width)
        
        // Compare with 4
        let element4 = app.collectionViewCell(4)
        XCTAssertTrue(element4.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element4.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 5
        let element5 = app.collectionViewCell(5)
        XCTAssertTrue(element5.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element5.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 6
        let element6 = app.collectionViewCell(6)
        XCTAssertTrue(element6.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element6.frame.size.width == scaledElement.frame.size.width)
        
        // Compare with 7
        let element7 = app.collectionViewCell(7)
        XCTAssertTrue(element7.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element7.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 8
        let element8 = app.collectionViewCell(8)
        XCTAssertTrue(element8.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element8.frame.size.width < scaledElement.frame.size.width)
    }
    
    func testZoomInElement1() throws {
        // Scale element 0
        let scaledElement = app.collectionViewCell(1)
        scaledElement.pinch(withScale: scale, velocity: velocity)
        
        // Compare with 0
        let element0 = app.collectionViewCell(0)
        XCTAssertTrue(element0.frame.size.height == scaledElement.frame.size.height)
        XCTAssertTrue(element0.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 2
        let element2 = app.collectionViewCell(2)
        XCTAssertTrue(element2.frame.size.height == scaledElement.frame.size.height)
        XCTAssertTrue(element2.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 3
        let element3 = app.collectionViewCell(3)
        XCTAssertTrue(element3.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element3.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 4
        let element4 = app.collectionViewCell(4)
        XCTAssertTrue(element4.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element4.frame.size.width == scaledElement.frame.size.width)
        
        // Compare with 5
        let element5 = app.collectionViewCell(5)
        XCTAssertTrue(element5.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element5.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 6
        let element6 = app.collectionViewCell(6)
        XCTAssertTrue(element6.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element6.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 7
        let element7 = app.collectionViewCell(7)
        XCTAssertTrue(element7.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element7.frame.size.width == scaledElement.frame.size.width)
        
        // Compare with 8
        let element8 = app.collectionViewCell(8)
        XCTAssertTrue(element8.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element8.frame.size.width < scaledElement.frame.size.width)
    }
    
    func testZoomInElement2() throws {
        // Scale element 0
        let scaledElement = app.collectionViewCell(2)
        scaledElement.pinch(withScale: scale, velocity: velocity)
        
        // Compare with 0
        let element0 = app.collectionViewCell(0)
        XCTAssertTrue(element0.frame.size.height == scaledElement.frame.size.height)
        XCTAssertTrue(element0.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 1
        let element1 = app.collectionViewCell(1)
        XCTAssertTrue(element1.frame.size.height == scaledElement.frame.size.height)
        XCTAssertTrue(element1.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 3
        let element3 = app.collectionViewCell(3)
        XCTAssertTrue(element3.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element3.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 4
        let element4 = app.collectionViewCell(4)
        XCTAssertTrue(element4.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element4.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 5
        let element5 = app.collectionViewCell(5)
        XCTAssertTrue(element5.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element5.frame.size.width == scaledElement.frame.size.width)
        
        // Compare with 6
        let element6 = app.collectionViewCell(6)
        XCTAssertTrue(element6.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element6.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 7
        let element7 = app.collectionViewCell(7)
        XCTAssertTrue(element7.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element7.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 8
        let element8 = app.collectionViewCell(8)
        XCTAssertTrue(element8.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element8.frame.size.width == scaledElement.frame.size.width)
    }
    
    func testZoomInElement3() throws {
        // Scale element 3
        let scaledElement = app.collectionViewCell(3)
        scaledElement.pinch(withScale: scale, velocity: velocity)
        
        // Compare with 0
        let element0 = app.collectionViewCell(0)
        XCTAssertTrue(element0.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element0.frame.size.width == scaledElement.frame.size.width)
        
        // Compare with 1
        let element1 = app.collectionViewCell(1)
        XCTAssertTrue(element1.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element1.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 2
        let element2 = app.collectionViewCell(2)
        XCTAssertTrue(element2.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element2.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 4
        let element4 = app.collectionViewCell(4)
        XCTAssertTrue(element4.frame.size.height == scaledElement.frame.size.height)
        XCTAssertTrue(element4.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 5
        let element5 = app.collectionViewCell(5)
        XCTAssertTrue(element5.frame.size.height == scaledElement.frame.size.height)
        XCTAssertTrue(element5.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 6
        let element6 = app.collectionViewCell(6)
        XCTAssertTrue(element6.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element6.frame.size.width == scaledElement.frame.size.width)
        
        // Compare with 7
        let element7 = app.collectionViewCell(7)
        XCTAssertTrue(element7.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element7.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 8
        let element8 = app.collectionViewCell(8)
        XCTAssertTrue(element8.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element8.frame.size.width < scaledElement.frame.size.width)
    }
    
    func testZoomInElement4() throws {
        // Scale element 4
        let scaledElement = app.collectionViewCell(4)
        scaledElement.pinch(withScale: scale, velocity: velocity)
        
        // Compare with 0
        let element0 = app.collectionViewCell(0)
        XCTAssertTrue(element0.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element0.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 1
        let element1 = app.collectionViewCell(1)
        XCTAssertTrue(element1.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element1.frame.size.width == scaledElement.frame.size.width)
        
        // Compare with 2
        let element2 = app.collectionViewCell(2)
        XCTAssertTrue(element2.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element2.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 3
        let element3 = app.collectionViewCell(3)
        XCTAssertTrue(element3.frame.size.height == scaledElement.frame.size.height)
        XCTAssertTrue(element3.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 5
        let element5 = app.collectionViewCell(5)
        XCTAssertTrue(element5.frame.size.height == scaledElement.frame.size.height)
        XCTAssertTrue(element5.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 6
        let element6 = app.collectionViewCell(6)
        XCTAssertTrue(element6.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element6.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 7
        let element7 = app.collectionViewCell(7)
        XCTAssertTrue(element7.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element7.frame.size.width == scaledElement.frame.size.width)
        
        // Compare with 8
        let element8 = app.collectionViewCell(8)
        XCTAssertTrue(element8.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element8.frame.size.width < scaledElement.frame.size.width)
    }
    
    func testZoomInElement5() throws {
        // Scale element 5
        let scaledElement = app.collectionViewCell(5)
        scaledElement.pinch(withScale: scale, velocity: velocity)
        
        // Compare with 0
        let element0 = app.collectionViewCell(0)
        XCTAssertTrue(element0.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element0.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 1
        let element1 = app.collectionViewCell(1)
        XCTAssertTrue(element1.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element1.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 2
        let element2 = app.collectionViewCell(2)
        XCTAssertTrue(element2.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element2.frame.size.width == scaledElement.frame.size.width)
        
        // Compare with 3
        let element3 = app.collectionViewCell(3)
        XCTAssertTrue(element3.frame.size.height == scaledElement.frame.size.height)
        XCTAssertTrue(element3.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 4
        let element4 = app.collectionViewCell(4)
        XCTAssertTrue(element4.frame.size.height == scaledElement.frame.size.height)
        XCTAssertTrue(element4.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 6
        let element6 = app.collectionViewCell(6)
        XCTAssertTrue(element6.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element6.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 7
        let element7 = app.collectionViewCell(7)
        XCTAssertTrue(element7.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element7.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 8
        let element8 = app.collectionViewCell(8)
        XCTAssertTrue(element8.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element8.frame.size.width == scaledElement.frame.size.width)
    }
    
    func testZoomInElement6() throws {
        // Scale element 6
        let scaledElement = app.collectionViewCell(6)
        scaledElement.pinch(withScale: scale, velocity: velocity)
        
        // Compare with 0
        let element0 = app.collectionViewCell(0)
        XCTAssertTrue(element0.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element0.frame.size.width == scaledElement.frame.size.width)
        
        // Compare with 1
        let element1 = app.collectionViewCell(1)
        XCTAssertTrue(element1.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element1.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 2
        let element2 = app.collectionViewCell(2)
        XCTAssertTrue(element2.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element2.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 3
        let element3 = app.collectionViewCell(3)
        XCTAssertTrue(element3.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element3.frame.size.width == scaledElement.frame.size.width)
        
        // Compare with 4
        let element4 = app.collectionViewCell(4)
        XCTAssertTrue(element4.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element4.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 5
        let element5 = app.collectionViewCell(5)
        XCTAssertTrue(element5.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element5.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 7
        let element7 = app.collectionViewCell(7)
        XCTAssertTrue(element7.frame.size.height == scaledElement.frame.size.height)
        XCTAssertTrue(element7.frame.size.width < scaledElement.frame.size.width)
        
        let element8 = app.collectionViewCell(8)
        XCTAssertTrue(element8.frame.size.height == scaledElement.frame.size.height)
        XCTAssertTrue(element8.frame.size.width < scaledElement.frame.size.width)
    }
    
    func testZoomInElement7() throws {
        // Scale element 7
        let scaledElement = app.collectionViewCell(7)
        scaledElement.pinch(withScale: scale, velocity: velocity)
        
        // Compare with 0
        let element0 = app.collectionViewCell(0)
        XCTAssertTrue(element0.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element0.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 1
        let element1 = app.collectionViewCell(1)
        XCTAssertTrue(element1.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element1.frame.size.width == scaledElement.frame.size.width)
        
        // Compare with 2
        let element2 = app.collectionViewCell(2)
        XCTAssertTrue(element2.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element2.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 3
        let element3 = app.collectionViewCell(3)
        XCTAssertTrue(element3.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element3.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 4
        let element4 = app.collectionViewCell(4)
        XCTAssertTrue(element4.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element4.frame.size.width == scaledElement.frame.size.width)
        
        // Compare with 5
        let element5 = app.collectionViewCell(5)
        XCTAssertTrue(element5.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element5.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 6
        let element6 = app.collectionViewCell(6)
        XCTAssertTrue(element6.frame.size.height == scaledElement.frame.size.height)
        XCTAssertTrue(element6.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 8
        let element8 = app.collectionViewCell(8)
        XCTAssertTrue(element8.frame.size.height == scaledElement.frame.size.height)
        XCTAssertTrue(element8.frame.size.width < scaledElement.frame.size.width)
    }
    
    func testZoomInElement8() throws {
        // Scale element 8
        let scaledElement = app.collectionViewCell(8)
        scaledElement.pinch(withScale: scale, velocity: velocity)
        
        // Compare with 0
        let element0 = app.collectionViewCell(0)
        XCTAssertTrue(element0.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element0.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 1
        let element1 = app.collectionViewCell(1)
        XCTAssertTrue(element1.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element1.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 2
        let element2 = app.collectionViewCell(2)
        XCTAssertTrue(element2.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element2.frame.size.width == scaledElement.frame.size.width)
        
        // Compare with 3
        let element3 = app.collectionViewCell(3)
        XCTAssertTrue(element3.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element3.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 4
        let element4 = app.collectionViewCell(4)
        XCTAssertTrue(element4.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element4.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 5
        let element5 = app.collectionViewCell(5)
        XCTAssertTrue(element5.frame.size.height < scaledElement.frame.size.height)
        XCTAssertTrue(element5.frame.size.width == scaledElement.frame.size.width)
        
        // Compare with 6
        let element6 = app.collectionViewCell(6)
        XCTAssertTrue(element6.frame.size.height == scaledElement.frame.size.height)
        XCTAssertTrue(element6.frame.size.width < scaledElement.frame.size.width)
        
        // Compare with 7
        let element7 = app.collectionViewCell(7)
        XCTAssertTrue(element7.frame.size.height == scaledElement.frame.size.height)
        XCTAssertTrue(element7.frame.size.width < scaledElement.frame.size.width)
    }

}
