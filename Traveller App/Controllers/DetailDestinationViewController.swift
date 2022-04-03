//
//  DetailDestinationViewController.swift
//  Traveller App
//
//  Created by Mikail on 03/04/2022.
//

import UIKit

class DetailDestinationViewController: UIViewController {

    var destination:DiscoverItem?
    
    let headerView:UIView = {
        let view = UIView()

        view.translatesAutoresizingMaskIntoConstraints=false
        return view
    } ()
    
    let headerImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds=true
        imageView.translatesAutoresizingMaskIntoConstraints=false
        return imageView
    }()
    
    let priceLabel:UILabel={
       let label = UILabel()
        label.textColor = .white
        label.text = "$140/person"
        label.translatesAutoresizingMaskIntoConstraints=false
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        return label
    }()
    
    let cityNameLabel:UILabel={
       let label = UILabel()
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints=false
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(headerView)
     
        headerView.addSubview(headerImageView)
        headerImageView.addSubview(priceLabel)
        headerImageView.addSubview(cityNameLabel)
        headerImageView.sd_setImage(with: destination?.cityURL, completed: nil)
        headerImageView.roundCorners([.bottomLeft, .bottomRight, .topLeft], radius: 30)
      
        cityNameLabel.text = destination?.city
        
        setupConstraints()
    }
    
    
    func setupConstraints(){
        let viewConstraints = [
            headerView.widthAnchor.constraint(equalTo: view.widthAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 500)
        ]
        
        let headerImageViewConstraints = [
            headerImageView.topAnchor.constraint(equalTo: headerView.topAnchor),
            headerImageView.leadingAnchor.constraint(equalTo: headerView.leadingAnchor),
            headerImageView.trailingAnchor.constraint(equalTo: headerView.trailingAnchor),
            headerImageView.bottomAnchor.constraint(equalTo: headerView.bottomAnchor)
        ]
        
        let priceLabelConstraints = [
            priceLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor,constant: 20),
            priceLabel.bottomAnchor.constraint(equalTo: headerView.bottomAnchor,constant: -40)
        ]
        
        let cityNameLabel = [
            cityNameLabel.bottomAnchor.constraint(equalTo: priceLabel.topAnchor,constant: -5),
            cityNameLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor,constant: 20)
        ]
        
        NSLayoutConstraint.activate(viewConstraints)
        NSLayoutConstraint.activate(headerImageViewConstraints)
        NSLayoutConstraint.activate(priceLabelConstraints)
        NSLayoutConstraint.activate(cityNameLabel)
        
    }

    

}
