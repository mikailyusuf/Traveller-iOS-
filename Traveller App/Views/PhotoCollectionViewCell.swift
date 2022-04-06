//
//  PhotoCollectionViewCell.swift
//  Traveller App
//
//  Created by Mikail on 06/04/2022.
//

import UIKit
import SDWebImage

class PhotoCollectionViewCell: UICollectionViewCell {
    static let identifier = "PhotoCollectionViewCell"
    
    let  imageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(imageView)
        contentView.layer.cornerRadius = 12
        contentView.layer.masksToBounds = true
    }
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        imageView.frame = contentView.bounds
    }
    
    func configure(with urlString:String){
        imageView.sd_setImage(with: URL(string: urlString), completed: nil)
    }
}
