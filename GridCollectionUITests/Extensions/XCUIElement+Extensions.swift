//
//  XCUIElement+Extensions.swift
//  GridCollectionUITests
//
//  Created by Aliaksandr Dvoineu on 29.07.22.
//

import Foundation
import XCTest

extension XCUIElement {
    
    /// Returns a collection view cell with the id "collectionViewCell-$number'.
    func collectionViewCell(_ number: Int) -> XCUIElement {
        XCUIApplication().collectionViews.cells["collectionViewCell-\(number)"]
    }
    
}
