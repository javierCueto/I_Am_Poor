//
//  ViewController.swift
//  I Am Poor
//
//  Created by Angela Yu on 24/08/2016.
//  Modificado por javier cueto. From storyboards to programmatically
//

import UIKit

class ViewController: UIViewController {

    private let cabonImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.image = #imageLiteral(resourceName: "coal")
        return iv
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "No me preguntes por dinero 💸💸"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .textColor
        return label
    }()
    
    
    private let titlePrimaryLabel: UILabel = {
        let label = UILabel()
        label.text = "I Am Poor"
        label.font = UIFont.boldSystemFont(ofSize: 56)
        label.textColor = .textColor
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureLabel()
        configureImage()
    }
    
    func configureUI(){
        self.view.backgroundColor = .blueBackground
    }
    
    func configureLabel(){
        self.view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        
        self.view.addSubview(titlePrimaryLabel)
        titlePrimaryLabel.translatesAutoresizingMaskIntoConstraints = false
        titlePrimaryLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titlePrimaryLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 160).isActive = true
        
        
    }
    
    
    func configureImage(){
        self.view.addSubview(cabonImageView)
        cabonImageView.translatesAutoresizingMaskIntoConstraints = false
        cabonImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cabonImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        cabonImageView.heightAnchor.constraint(equalToConstant: 260).isActive = true
        cabonImageView.widthAnchor.constraint(equalToConstant: 260).isActive = true
    }



}

