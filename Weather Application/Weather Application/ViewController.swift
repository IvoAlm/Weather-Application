//
//  ViewController.swift
//  Weather Application
//
//  Created by Ivo Da Silveira Almeida on 27/12/25.
//

import UIKit

class ViewController: UIViewController {
    
    private let customView = UIView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
       
    }
    private func setupView() {
        view.backgroundColor = UIColor.blue
        
        customView.backgroundColor = .black
        customView.translatesAutoresizingMaskIntoConstraints = false
        
        setHierarch()
        setContraint()
        

    }
    private func setHierarch() {
        view.addSubview(customView)
    }
    private func setContraint() {
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50)
        ])
    }


}

