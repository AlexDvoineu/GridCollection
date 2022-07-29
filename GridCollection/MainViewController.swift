//
//  ViewController.swift
//  GridCollection
//
//  Created by Aliaksandr Dvoineu on 25.07.22.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var collectionView: CollectionView!
    
    // MARK: - Private properties
    
    private lazy var dataSource = GridCollectionDataSource(with: collectionView)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = dataSource
    }

}
