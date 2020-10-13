//
//  CarCollectionViewCell.swift
//  Exec1_collectionView
//
//  Created by Mizia Lima on 10/13/20.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imagePhoto: UIImageView!
    
    func setup(car: Car){
        imagePhoto.image = UIImage(named: car.imagePhoto)
    }
}
