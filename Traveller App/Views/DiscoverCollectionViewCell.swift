//
//  DiscoverCollectionViewCell.swift
//  Traveller App
//
//  Created by Mikail on 03/04/2022.
//

import UIKit
import SDWebImage

class DiscoverCollectionViewCell: UICollectionViewCell {
    static let identifier = "DiscoverCollectionViewCell"
    
    let  cityImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let cityLabel:UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = UIFont.systemFont(ofSize: 18)
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let countryLabel:UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let locationIconImageView:UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(systemName: "location.circle")
        image?.withTintColor(.label)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image=image
        
        return imageView
        
        
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(cityImageView)
        contentView.addSubview(cityLabel)
        contentView.addSubview(countryLabel)
        contentView.addSubview(locationIconImageView)
        contentView.layer.cornerRadius = 12
        contentView.layer.masksToBounds = true
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
         fatalError()
    }
    
    
    private func setupConstraints(){
        let locationImageViewConstraints = [
            locationIconImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -20),
            locationIconImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20)
        ]
        
        let countryLabelConstraints = [
            countryLabel.leadingAnchor.constraint(equalTo: locationIconImageView.trailingAnchor,constant: 5),
            countryLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -20)
        ]
        
        let cityNameLabel = [
            cityLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20),
            cityLabel.bottomAnchor.constraint(equalTo: locationIconImageView.topAnchor,constant: -10)
        ]
        
        NSLayoutConstraint.activate(locationImageViewConstraints)
        NSLayoutConstraint.activate(countryLabelConstraints)
        NSLayoutConstraint.activate(cityNameLabel)
    }
    
    override func layoutSubviews() {
        cityImageView.frame = contentView.bounds
    }
    
    func configure(with viewModel:DiscoverCollectionViewViewModel){
        
        cityLabel.text = viewModel.cityName
        countryLabel.text = viewModel.country
        cityImageView.sd_setImage(with: viewModel.cityImageURL, completed: nil)
        
    }
}
