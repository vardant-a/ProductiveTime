//
//  MainViewController.swift
//  ProductiveTime
//
//  Created by Алексей on 08.10.2022.
//

import UIKit

final class MainViewController: UIViewController {
    
    private let testButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.layer.cornerRadius = 20
        return button
    }()
    
    var сounterUSER = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        view.addSubview(testButton)
        setConstrains()
        testButton.addTarget(self, action: #selector(test), for: .touchUpInside)
    }
    

    @objc private func test() {
        сounterUSER += 1
        print("Вы нажали \(сounterUSER) раз")
    }
}

extension MainViewController {
    private func setConstrains() {
        NSLayoutConstraint.activate([
            testButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            testButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            testButton.heightAnchor.constraint(equalToConstant: 50),
            testButton.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
}
