//
//  DetailDestinationViewController.swift
//  Traveller App
//
//  Created by Mikail on 03/04/2022.
//

import UIKit

class DetailDestinationViewController: UIViewController {

    var destination:DiscoverItem?
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
    
    let photoNameLabel:UILabel={
       let label = UILabel()
        label.textColor = .label
        label.text="Photos"
        label.translatesAutoresizingMaskIntoConstraints=false
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        return label
    }()
    
    let photoCollectIonView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
         layout.itemSize  = CGSize(width:120,height:140)
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
         layout.scrollDirection = .horizontal
         let collectionView = UICollectionView(frame: .zero,collectionViewLayout: layout)
         collectionView.register(PhotoCollectionViewCell.self, forCellWithReuseIdentifier: PhotoCollectionViewCell.identifier)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
         return collectionView
    }()
    
    let bookNowButton:UIButton = {
       let button = UIButton()
        button.setTitle("Book Now", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints=false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

        
        view.addSubview(headerImageView)
        view.addSubview(priceLabel)
        view.addSubview(cityNameLabel)
        headerImageView.sd_setImage(with: destination?.cityURL, completed: nil)
        headerImageView.roundCorners([.bottomLeft, .bottomRight, .topLeft], radius: 30)
        cityNameLabel.text = destination?.city
        
        view.addSubview(photoNameLabel)
        view.addSubview(photoCollectIonView)
        view.addSubview(bookNowButton)
        
        photoCollectIonView.delegate = self
        photoCollectIonView.dataSource = self
        
        setupConstraints()

    }
    
    
    func setupConstraints(){
        let viewHeight = view.frame.height
        
        let headerImageViewConstraints = [
            headerImageView.topAnchor.constraint(equalTo: view.topAnchor),
            headerImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerImageView.heightAnchor.constraint(equalToConstant: viewHeight/2)
        ]
        
        let priceLabelConstraints = [
            priceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            priceLabel.bottomAnchor.constraint(equalTo: headerImageView.bottomAnchor,constant: -40)
        ]
        
        let cityNameLabel = [
            cityNameLabel.bottomAnchor.constraint(equalTo: priceLabel.topAnchor,constant: -5),
            cityNameLabel.leadingAnchor.constraint(equalTo: headerImageView.leadingAnchor,constant: 20)
        ]
        
        let photoNameLabelConstraints = [
            photoNameLabel.topAnchor.constraint(equalTo: headerImageView.bottomAnchor,constant: 20),
            photoNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20)
        ]
        
        let photoCollectionViewConstraints = [
            photoCollectIonView.topAnchor.constraint(equalTo: photoNameLabel.bottomAnchor,constant: 10),
            photoCollectIonView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            photoCollectIonView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            photoCollectIonView.heightAnchor.constraint(equalToConstant: 140)
        ]
        
        let bookNowButtonConstraints = [
            bookNowButton.topAnchor.constraint(equalTo: photoCollectIonView.bottomAnchor,constant: 30),
            bookNowButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            bookNowButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            bookNowButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        NSLayoutConstraint.activate(headerImageViewConstraints)
        NSLayoutConstraint.activate(priceLabelConstraints)
        NSLayoutConstraint.activate(cityNameLabel)
        NSLayoutConstraint.activate(photoNameLabelConstraints)
        NSLayoutConstraint.activate(photoCollectionViewConstraints)
        NSLayoutConstraint.activate(bookNowButtonConstraints)
        
    }


}


extension DetailDestinationViewController : UICollectionViewDataSource, UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return destination?.photos.count ?? 0
       }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                     
        let photo = destination?.photos[indexPath.row]
        
       guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoCollectionViewCell.identifier, for: indexPath) as? PhotoCollectionViewCell else{
            return UICollectionViewCell()
        }
        
            cell.configure(with:photo ?? "")
            return cell
        }
    

    }

