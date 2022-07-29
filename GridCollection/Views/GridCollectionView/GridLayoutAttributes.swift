//
//  GridLayoutAttributes.swift
//  GridCollection
//
//  Created by Aliaksandr Dvoineu on 25.07.22.
//

import UIKit

class GridLayoutAttributes: UICollectionViewLayoutAttributes {
    var index: GridIndex?
}

class GridCollectionViewLayout: UICollectionViewLayout {

    // MARK: Public properties
    
    var config = GridCollectionConfig() {
        didSet {
            self.rowScaleableArray = GridCellArray(numberOfValues: config.numberOfRows, minValue: config.minScaleValue)
            self.columnScaleableArray = GridCellArray(numberOfValues: config.numberOfColumns, minValue: config.minScaleValue)
        }
    }

    // MARK: Private properties
    
    private var attributes = [IndexPath: GridLayoutAttributes]()
    
    /// Stored values that contain the multiplier for a row.
    private lazy var rowScaleableArray = GridCellArray()
    
    /// Stored values that contain the multiplier for a column.
    private lazy var columnScaleableArray = GridCellArray()
    
    private var collectionViewWidth: CGFloat {
        collectionView?.bounds.width ?? .zero
    }
    
    private var collectionViewHeight: CGFloat {
        collectionView?.bounds.height ?? .zero
    }

    // MARK: - Private methods
    
    private func reset() {
        self.attributes = [:]
    }

    private func prepareCells() {
        attributes.removeAll()
        var cellYPosition: CGFloat = 0
        for column in 0..<config.numberOfRows {
            let cellHeight = rowScaleableArray.scaledValues[column] * collectionViewHeight
            var cellXPosition: CGFloat = 0
            for row in 0..<config.numberOfColumns {
                let index = column * (config.numberOfColumns) + row
                let cellWidth = columnScaleableArray.scaledValues[row] * collectionViewWidth
                
                let indexPath = IndexPath(item: index, section: 0)
                let attributes = GridLayoutAttributes(forCellWith: indexPath)
                attributes.index = GridIndex(row: row, column: column)
                attributes.frame = CGRect(
                    origin: CGPoint(x: cellXPosition, y: cellYPosition),
                    size: CGSize(width: cellWidth, height: cellHeight))
                self.attributes[indexPath] = attributes
                
                cellXPosition += cellWidth
            }
            cellYPosition += cellHeight
        }
    }

    // MARK: - Overrides
    
    override var collectionViewContentSize: CGSize {
        CGSize(width: collectionViewWidth, height: collectionViewHeight)
    }
    
    override func prepare() {
        super.prepare()
        reset()
        prepareCells()
    }

    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        attributes.values.filter { $0.frame.intersects(rect) }
    }

    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        return attributes[indexPath]
    }

    override public func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        (self.collectionView?.bounds ?? newBounds) != newBounds
    }
    
}

// MARK: - UIGestureRecognizer Handler

extension GridCollectionViewLayout {
    
    @objc func handleScreenEdgePan(gestureRecognizer: UIPinchGestureRecognizer) {
        if gestureRecognizer.state == .began {
            gestureRecognizerShouldBegin(location: gestureRecognizer.location(in: self.collectionView))
        } else if gestureRecognizer.state == .changed {
            gestureRecognizerChanged(scale: gestureRecognizer.scale)
        } else if gestureRecognizer.state == .ended {
            storeScaleValues(scale: gestureRecognizer.scale)
        }
    }

    /// Resize begin.
    private func gestureRecognizerShouldBegin(location: CGPoint) {
        // Get selected cell coordinate
        let yPos = rowScaleableArray.getSelectedIndex(maxSize: collectionViewHeight, selectedPos: location.y)
        let xPos = columnScaleableArray.getSelectedIndex(maxSize: collectionViewWidth, selectedPos: location.x)
        rowScaleableArray.selectedIndex = yPos
        columnScaleableArray.selectedIndex = xPos
    }

    /// Resize changed.
    private func gestureRecognizerChanged(scale: CGFloat) {
        rowScaleableArray.calculateNewValues(scale)
        columnScaleableArray.calculateNewValues(scale)
        
        self.invalidateLayout()
    }

    /// Resize ends. Store new values.
    private func storeScaleValues(scale: CGFloat) {
        rowScaleableArray.storeValues(scale)
        columnScaleableArray.storeValues(scale)
    }
}
