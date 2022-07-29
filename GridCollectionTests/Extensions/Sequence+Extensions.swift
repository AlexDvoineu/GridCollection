//
//  Sequence+Extensions.swift
//  GridCollectionTests
//
//  Created by Aliaksandr Dvoineu on 29.07.22.
//

import Foundation

extension Sequence where Element: AdditiveArithmetic {
    func sum() -> Element { reduce(.zero, +) }
}
