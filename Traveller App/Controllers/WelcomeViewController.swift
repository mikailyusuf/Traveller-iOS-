//
//  ViewController.swift
//  Traveller App
//
//  Created by Mikail on 02/04/2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    let backgroundImageView:UIImageView = {
       let imageView=UIImageView(image: UIImage(named: "bg"))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
        
    }()
    
    let labelText:UILabel = {
       let label = UILabel()
        label.text = "Let's make your dream vacation."
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 32)
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textAlignment  = .left
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let button:UIButton = {
       let button = UIButton()
        button.setTitle("Get Started", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints=false
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(backgroundImageView)
        view.addSubview(button)
        view.addSubview(labelText)
        
        addConstraints()
        
        button.addTarget(self, action: #selector(didTapGetStarted), for: .touchUpInside)
    }
    
    @objc func didTapGetStarted(){
        let vc = MainToolBarViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
     
    }
    
    
    private func addConstraints(){
        
        let buttonConstraints=[
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -40),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30),
            button.heightAnchor.constraint(equalToConstant: 40)
        ]
        
        let labelTextConstraints = [
            labelText.bottomAnchor.constraint(equalTo: button.topAnchor,constant: -10),
            labelText.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 40),
            labelText.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -40)
        ]
        
        NSLayoutConstraint.activate(buttonConstraints)
        NSLayoutConstraint.activate(labelTextConstraints)
    }

    
    override func viewDidLayoutSubviews() {
        backgroundImageView.frame = view.bounds
    }

}

