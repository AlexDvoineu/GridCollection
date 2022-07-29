//
//  Reusable.swift
//  GridCollection
//
//  Created by Aliaksandr Dvoineu on 25.07.22.
//

import UIKit

public protocol Reusable {}

extension LabelCollectionViewCell: Reusable {}

extension Reusable where Self: UICollectionViewCell {
    
    static var nib: UINib {
        return UINib(nibName: self.reuseIdentifier, bundle: Bundle(for: self))
    }
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
}
