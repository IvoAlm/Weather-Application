//
//  ViewController.swift
//  Weather Application
//
//  Created by Ivo Da Silveira Almeida on 27/12/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
       
    }
    private func setupView() {
        view.backgroundColor = UIColor.blue
        let customView = UIView(frame: .zero)
        customView.backgroundColor = .black
        customView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(customView)
        
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50)
        ])
    }


}

