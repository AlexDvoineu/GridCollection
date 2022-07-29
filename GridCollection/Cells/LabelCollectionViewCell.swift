//
//  LabelCollectionViewCell.swift
//  ScaleableCollectionView
//
//  Created by Heiko von Wegerer on 28.12.21.
//

import UIKit

struct LabelCollectionViewCellModel {
    
    let text: String
}

class LabelCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var background: UIView!
    @IBOutlet private weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        background.layer.cornerRadius = 0
    }
    
    func configure(withViewModel model: LabelCollectionViewCellModel) {
        self.label.text = model.text
    }
    
}
