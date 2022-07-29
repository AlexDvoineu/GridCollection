//
//  CollectionView.swift
//  GridCollection
//
//  Created by Aliaksandr Dvoineu on 25.07.22.
//

import UIKit

class CollectionView: UICollectionView {

    // MARK: - Public properties
    
    var config: GridCollectionConfig? {
        didSet {
            if let config = config {
                viewLayout.config = config
                self.collectionViewLayout.invalidateLayout()
            }
        }
    }
    
    // MARK: - Private properties
    
    private var viewLayout = GridCollectionViewLayout()
    
    // MARK: - Life cycle
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        self.isScrollEnabled = false
        self.isUserInteractionEnabled = true
        self.collectionViewLayout = viewLayout
        
        // Pin Gesture Recognizer
        let pinchGesture = UIPinchGestureRecognizer(target: viewLayout, action: #selector(viewLayout.handleScreenEdgePan))
        self.addGestureRecognizer(pinchGesture)
    }

}
