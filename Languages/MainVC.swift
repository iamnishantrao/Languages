//
//  MainVC.swift
//  Languages
//
//  Created by Nishant on 17/07/17.
//  Copyright © 2017 rao. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {

    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    // variable for singleton class
    var ds: DataService = DataService.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ds = DataService.instance
        ds.delegate = self
        ds.loadLanguageData()
        
        collectionView.delegate = self
        collectionView.dataSource = self

        headerView.addDropShadow()
        
        let nib = UINib(nibName: "LanguageCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "LanguageCell")
    }
    
    func languageDataLoaded() {
        print("Language Data Loaded")
    }

}

// extension to implement UICollectionView
extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return ds.languageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LanguageCell", for: indexPath) as? LanguageCell {
            
            cell.configureCell(language: ds.languageArray[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 95, height: 95)
    }
}
