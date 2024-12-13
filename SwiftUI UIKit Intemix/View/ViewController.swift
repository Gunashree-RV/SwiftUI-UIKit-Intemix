//
//  ViewController.swift
//  SwiftUI UIKit Intemix
//
//  Created by gur on 13/12/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set the background color of the view
        view.backgroundColor = .white
        
        // Create a label
        let helloLabel = UILabel()
        helloLabel.text = "UIKit ViewController"
        helloLabel.textColor = .black
        helloLabel.font = UIFont.systemFont(ofSize: 24)
        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Add the label to the view
        view.addSubview(helloLabel)
        
        // Create a button
        let nextButton = UIButton()
        nextButton.setTitle("Next", for: .normal)
        nextButton.setTitleColor(.white, for: .normal)
        nextButton.backgroundColor = .systemBlue
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Set content edge insets for padding
        nextButton.contentEdgeInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        
        // Add action to the button
        nextButton.addTarget(self, action: #selector(openNextPage), for: .touchUpInside)
        
        view.addSubview(nextButton)
        
        // Center the label in the view
        NSLayoutConstraint.activate([
            helloLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            helloLabel.bottomAnchor.constraint(equalTo: nextButton.topAnchor, constant: -16),

            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc
    func openNextPage() {
        print("Next clicked")
        let nextVC = SwiftUIViewContoller()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}

