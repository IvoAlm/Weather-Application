//
//  ViewController.swift
//  Weather Application
//
//  Created by Ivo Da Silveira Almeida on 27/12/25.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var  backgroundView:  UIImageView = {
        let imageView = UIImageView() //  por padrao ele já considera como frama: .zero
        imageView.image = UIImage(named: "background")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    private lazy var headerView: UIView = {
        let  header = UIView()
        header.backgroundColor = .white
        header.layer.cornerRadius = 20
        header.translatesAutoresizingMaskIntoConstraints = false
        return header
    }()
    private lazy var citylabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "São Paulo"
        label.textAlignment = .center
        label.textColor = UIColor(named: "primaryColor")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
        view.addSubview(headerView)
        
        headerView.addSubview(citylabel)
    }
    private func setContraint() {
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 60),
            headerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 35),
            headerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            headerView.heightAnchor.constraint(equalToConstant: 169)
        
            
        ])
        NSLayoutConstraint.activate([
            citylabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 15),
            citylabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 15),
            citylabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -15)
        ])
    }


}

