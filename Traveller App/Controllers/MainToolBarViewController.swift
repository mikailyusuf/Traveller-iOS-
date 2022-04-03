//
//  MainToolBarViewController.swift
//  Traveller App
//
//  Created by Mikail on 03/04/2022.
//

import UIKit

class MainToolBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground

        let vc1 = UINavigationController(rootViewController: DiscoverViewController())
        let vc2 = UINavigationController(rootViewController: ExploreViewController())
        let vc3 = UINavigationController(rootViewController: SavedTripsViewController())
        let vc4 = UINavigationController(rootViewController: ProfileViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "newspaper")
        vc3.tabBarItem.image = UIImage(systemName: "bookmark")
        vc4.tabBarItem.image = UIImage(systemName: "person.circle")
        
        vc1.title = "Discover"
        vc2.title = "Explore"
        vc3.title = "Saved"
        vc4.title = "Profile"
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)
    }
    

  
}
