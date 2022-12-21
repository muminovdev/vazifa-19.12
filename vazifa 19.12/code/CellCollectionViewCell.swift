//
//  CollectionViewCell.swift
//  19.12 dars
//
//  Created by Mac on 19/12/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    let image = UIImageView()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(image)
        image.frame = contentView.frame
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
