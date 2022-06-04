//
//  BannerCollectionVIewAdapter.swift
//  Khorug
//
//  Created by Ismailov Farrukh on 02/06/22.
//

import UIKit

class BannerCollectionVIewAdapter: NSObject {
    
    let collectionView: UICollectionView
    var img: UIImage?
    
    init(with collectionView: UICollectionView) {
        self.collectionView = collectionView
        super.init()
        setup()
    }
    
    func setup() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(BannerCell.self, forCellWithReuseIdentifier: BannerCell.identifier)
    }
    
    func update(with img: UIImage) {
        self.img = img
        collectionView.reloadData()
    }
}

extension BannerCollectionVIewAdapter: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BannerCell.identifier, for: indexPath) as! BannerCell
        cell.image.image = img
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
}
