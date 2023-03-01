//
//  ViewController.swift
//  SpecificCornerRadius
//
//  Created by JeongminKim on 2023/03/01.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var sampleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemCyan
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(sampleView)
        NSLayoutConstraint.activate([
            sampleView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sampleView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            sampleView.widthAnchor.constraint(equalToConstant: 200),
            sampleView.heightAnchor.constraint(equalToConstant: 200),
        ])
        
        setSpecificCornerRadius()
    }
    
    private func setSpecificCornerRadius() {
        // MARK: top-left & top-right corenrs
        sampleView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
//        // MARK: top-left & bottom-right corners
//        sampleView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMaxYCorner]
//        // MARK: bottom-left & top-right corners
//        sampleView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
//        // MARK: bottom-left & bottom-right corners
//        sampleView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        sampleView.layer.cornerRadius = 16
    }
}

