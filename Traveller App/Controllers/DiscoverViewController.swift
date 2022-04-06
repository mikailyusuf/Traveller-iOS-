//
//  DiscoverViewController.swift
//  Traveller App
//
//  Created by Mikail on 03/04/2022.
//

import UIKit

class DiscoverViewController: UIViewController {
    
    let discoverCities = Constants.discoryItems
    
    let discoverLabel:UILabel = {
       let label = UILabel()
        label.text = "Discover"
        label.textColor = .label
        label.font = UIFont.systemFont(ofSize: 30)
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.translatesAutoresizingMaskIntoConstraints=false
        return label
    }()
    
    let exploreLabel:UILabel = {
       let label = UILabel()
        label.text = "Explore the Beautiful world!"
        label.textColor = UIColor("#3C3C43")
        label.font = UIFont.systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints=false
        return label
    }()
    
    let searchBox:UITextField = {
        let field = UITextField()
         field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 50))
         field.leftViewMode = .always
         field.placeholder = "Search Places"
         field.autocapitalizationType = .words
         field.autocorrectionType = .yes
         field.backgroundColor = .secondarySystemBackground
         field.layer.masksToBounds = true
         field.layer.cornerRadius = 16
        field.translatesAutoresizingMaskIntoConstraints=false
        return field
    }()
    
    let stackViewLabelChild1:UILabel = {
        let label = UILabel()
        label.text = "Destinations"
        label.textColor = .systemBlue
        label.font = UIFont.systemFont(ofSize: 12)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()

    let stackViewLabelChild2:UILabel = {
        let label = UILabel()
        label.text = "Hotels"
        label.textColor = UIColor("#3C3C43")
        label.font = UIFont.systemFont(ofSize: 12)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()
    
    let stackViewLabelChild3:UILabel = {
        let label = UILabel()
        label.text = "Restaurants"
        label.textColor = UIColor("#3C3C43")
        label.font = UIFont.systemFont(ofSize: 12)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()
    
    let stackViewLabelChild4:UILabel = {
        let label = UILabel()
        label.text = "More"
        label.textColor = UIColor("#3C3C43")
        label.font = UIFont.systemFont(ofSize: 12)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()
    
    let stackView:UIStackView={
       let stackView = UIStackView()
        stackView.axis = NSLayoutConstraint.Axis.horizontal
        stackView.distribution = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.fill
    
        stackView.translatesAutoresizingMaskIntoConstraints=false
        return stackView
    }()
    
    
    let discoverCollectIonView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
         layout.itemSize  = CGSize(width:200,height:300)
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
         layout.scrollDirection = .horizontal
         let collectionView = UICollectionView(frame: .zero,collectionViewLayout: layout)
         collectionView.register(DiscoverCollectionViewCell.self, forCellWithReuseIdentifier: DiscoverCollectionViewCell.identifier)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
         return collectionView
    }()
    
    let moreToExploreCollectIonView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
         layout.itemSize  = CGSize(width:100,height:200)
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
         layout.scrollDirection = .horizontal
         let collectionView = UICollectionView(frame: .zero,collectionViewLayout: layout)
         collectionView.register(ExploreCollectionViewCell.self, forCellWithReuseIdentifier: ExploreCollectionViewCell.identifier)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
         return collectionView
    }()
    
    let moreToExploreLabel:UILabel = {
       let label = UILabel()
        label.text = "More to explore"
        label.textColor = .label
        label.font = UIFont.systemFont(ofSize: 20)
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints=false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
       
        view.addSubview(discoverLabel)
        view.addSubview(exploreLabel)
        view.addSubview(searchBox)
        view.addSubview(discoverCollectIonView)
        
        discoverCollectIonView.delegate = self
        discoverCollectIonView.dataSource = self
        
        view.addSubview(stackView)
        view.addSubview(moreToExploreLabel)
        view.addSubview(moreToExploreCollectIonView)
        
        moreToExploreCollectIonView.delegate = self
        moreToExploreCollectIonView.dataSource = self
        
        stackView.addArrangedSubview(stackViewLabelChild1)
        stackView.addArrangedSubview(stackViewLabelChild2)
        stackView.addArrangedSubview(stackViewLabelChild3)
        stackView.addArrangedSubview(stackViewLabelChild4)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "slider.horizontal.3"), style: .plain, target: nil, action: nil)
        navigationItem.leftBarButtonItem?.tintColor = .label
        
        addConstraints()
    }
    
    
    private func addConstraints(){
        
        let guide = view.safeAreaLayoutGuide
        
       let  discoverLabelConstraints=[
            discoverLabel.topAnchor.constraint(equalTo: guide.topAnchor,constant: 40),
            discoverLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor,constant:18),
        ]
        
        let exploreLabelConstrainsts = [
            exploreLabel.topAnchor.constraint(equalTo: discoverLabel.bottomAnchor),
            exploreLabel.leadingAnchor.constraint(equalTo: discoverLabel.leadingAnchor)
        ]
        
        let searchBoxConstraints = [
            searchBox.topAnchor.constraint(equalTo: exploreLabel.bottomAnchor,constant: 20),
            searchBox.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 18),
            searchBox.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -18),
            searchBox.heightAnchor.constraint(equalToConstant: 45)
        ]
        
        let stackViewConstrains=[
            
            stackView.topAnchor.constraint(equalTo: searchBox.bottomAnchor,constant: 10),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 18),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -18)
        ]
        
        let discoverCollectionViewConstraints = [
            discoverCollectIonView.topAnchor.constraint(equalTo: stackView.bottomAnchor,constant: -10),
            discoverCollectIonView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 18),
            discoverCollectIonView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 18),
            discoverCollectIonView.heightAnchor.constraint(equalToConstant: 350)
        ]
        
        let moreToExploreLabelConstraints = [
            moreToExploreLabel.topAnchor.constraint(equalTo: discoverCollectIonView.bottomAnchor,constant: 10),
            moreToExploreLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 18)
        ]
        
        let moreToExploreCollectionConstrainst = [
            moreToExploreCollectIonView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 18),
            moreToExploreCollectIonView.topAnchor.constraint(equalTo: moreToExploreLabel.bottomAnchor,constant: 10),
            moreToExploreCollectIonView.heightAnchor.constraint(equalToConstant: 210)
        ]
        
        NSLayoutConstraint.activate(discoverLabelConstraints)
        NSLayoutConstraint.activate(exploreLabelConstrainsts)
        NSLayoutConstraint.activate(searchBoxConstraints)
        NSLayoutConstraint.activate(stackViewConstrains)
        NSLayoutConstraint.activate(discoverCollectionViewConstraints)
        NSLayoutConstraint.activate(moreToExploreLabelConstraints)
        NSLayoutConstraint.activate(moreToExploreCollectionConstrainst)
        
    }
    
 

}

extension DiscoverViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        
        let vc = DetailDestinationViewController()
        let selectedDestination = discoverCities[indexPath.row]
        vc.destination = selectedDestination
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.moreToExploreCollectIonView{
            return  discoverCities.count
        }
        
        return discoverCities.count
       
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.moreToExploreCollectIonView{
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ExploreCollectionViewCell.identifier, for: indexPath) as? ExploreCollectionViewCell else{
                 return UICollectionViewCell()
             }
             
             let city = discoverCities[indexPath.row]
            cell.configure(with: DiscoverCollectionViewViewModel(country: city.country, cityName: city.city, cityImageURL: city.cityURL,photos: city.photos))
             
                 return cell
        }else{
            
       guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DiscoverCollectionViewCell.identifier, for: indexPath) as? DiscoverCollectionViewCell else{
            return UICollectionViewCell()
        }
        
        let city = discoverCities[indexPath.row]
            cell.configure(with: DiscoverCollectionViewViewModel(country: city.country, cityName: city.city, cityImageURL: city.cityURL,photos: city.photos))
        
            return cell
            
        }
    }
    
}

