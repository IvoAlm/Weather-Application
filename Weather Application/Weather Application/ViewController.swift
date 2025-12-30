//
//  ViewController.swift
//  Weather Application
//
//  Created by Ivo Da Silveira Almeida on 27/12/25.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var  backgroundView:  UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "background")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
       
    }
    private func setupView() {
        view.backgroundColor = UIColor.blue
        
        setHierarchy()
        setContraint()
    }
    private func setHierarchy() {
        view.addSubview(backgroundView)
    }
    private func setContraint() {
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            backgroundView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            backgroundView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            backgroundView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50)
        ])
    }


}

