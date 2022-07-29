//
//  GridCollectionDataSource.swift
//  GridCollection
//
//  Created by Aliaksandr Dvoineu on 25.07.22.
//

import UIKit

class GridCollectionDataSource: NSObject {
    
    private let numberOfRows = 3
    private let numberOfColumns = 3
    private let minScaleValue = 0.0
    
    private var sampleText: [String]?
    
    private let viewModel = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sem ipsum, cursus in elit in, lacinia imperdiet purus. Pellentesque semper, nisi in varius lobortis",
        "Curabitur blandit luctus feugiat. Donec ornare ligula quis sapien viverra, eu aliquet neque volutpat. Etiam sed auctor lacus. Pellentesque ac maximus tellus. Suspendisse commodo, felis eget feugiat volutpat, elit nibh molestie orci",
        "Aliquam eleifend nulla quam, nec bibendum massa vulputate id. Proin vel arcu neque. Etiam erat ex, consectetur non euismod sed, consectetur in ligula. Proin vitae hendrerit diam. Praesent faucibus nunc dictum tortor efficitur varius. Etiam non arcu vitae nisi hendrerit accumsan. Nullam ornare facilisis vehicula.",
        "Ut fermentum mattis gravida. Sed nec vulputate justo, id scelerisque mauris. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed convallis risus non lectus aliquet pulvinar",
        "Praesent interdum nunc at ex gravida, eget cursus orci hendrerit. Duis molestie diam lacinia enim sodales",
        "Vestibulum mollis lacus id sapien fringilla auctor. Fusce condimentum scelerisque nisi non aliquet",
        "Nunc sagittis libero in diam auctor pellentesque. Fusce sapien tellus, feugiat in arcu at, bibendum ultrices massa.",
        "Quisque consectetur ultrices facilisis. Vestibulum a odio id augue mattis scelerisque. Praesent eget massa sodales, vestibulum lorem non, vestibulum mauris",
        "Aliquam sit amet iaculis enim. Pellentesque varius purus ut mattis luctus. Maecenas sit amet leo egestas, sodales turpis quis, elementum turpis. Etiam interdum feugiat urna, nec placerat",
        "Pellentesque ac maximus tellus. Suspendisse commodo, felis eget feugiat volutpat, elit nibh molestie orci, at dignissim libero ex sed erat",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
        "Maecenas sollicitudin, dolor porttitor tristique iaculis, ex nibh finibus erat, et tincidunt ante augue eget magna. Etiam ornare massa nisl"
    ]
    
    init(with collectionView: CollectionView) {
        
        // Configure collection view
        collectionView.config = GridCollectionConfig(
            minScaleValue: minScaleValue,
            numberOfRows: numberOfRows,
            numberOfColumns: numberOfColumns
        )
        
        // Register Cells
        collectionView.register(LabelCollectionViewCell.nib, forCellWithReuseIdentifier: LabelCollectionViewCell.reuseIdentifier)
    }
}

// MARK: - UICollectionViewDataSource

extension GridCollectionDataSource: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        numberOfColumns * numberOfRows
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LabelCollectionViewCell.reuseIdentifier, for: indexPath) as! LabelCollectionViewCell
        cell.configure(withViewModel: LabelCollectionViewCellModel(text: viewModel[Int.random(in: 0..<viewModel.count)]))
        cell.accessibilityIdentifier = "collectionViewCell-\(indexPath.row)"
        
        return cell
    }
    
}
