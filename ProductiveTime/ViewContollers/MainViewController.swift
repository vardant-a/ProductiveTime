//
//  MainViewController.swift
//  ProductiveTime
//
//  Created by Алексей on 08.10.2022.
//

import SwiftUI

final class MainViewController: UIViewController {
    
    private lazy var testButton: UIButton = {
        var button = UIButton()
        button.setTitle("Test Button", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.layer.cornerRadius = 12
        
        button.addTarget(self, action: #selector(test), for: .touchUpInside)
        return button
    }()
    
    private lazy var saveButton: UIButton = {
        createButton(
            withTitle: "test",
            andColor: .systemRed,
            action: UIAction { _ in print("1") }
        )
    }()
    
    private var сounterUSER = 0
    
    let navBarAppearance = UINavigationBarAppearance()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        addSubviews(testButton, saveButton)
        setConstrains()
        
        title = "Test 1"
        navBarAppearance.backgroundColor = UIColor.navTabColor
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    }

    @objc private func test() {
        сounterUSER += 1
        print("Вы нажали \(сounterUSER) раз")
    }
}
// MARK: - Adding Subviews
extension MainViewController {
    
    private func addSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func createButton(withTitle title: String, andColor color: UIColor, action: UIAction) -> UIButton {
        let button = UIButton()
        if #available(iOS 15.0, *) {
            var butAttrubures = AttributeContainer()
            butAttrubures.font = UIFont.boldSystemFont(ofSize: 18)
            
            var buttonConfiguration = UIButton.Configuration.filled()
            buttonConfiguration.title = title
            buttonConfiguration.background.cornerRadius = 100
            
            return UIButton(
                configuration: buttonConfiguration,
                primaryAction: action
            )
        } else {
            button.setTitle(title, for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.backgroundColor = color
            button.layer.cornerRadius = 20
            button.addTarget(self, action: #selector(test), for: .touchUpInside)
            return button
        }
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
        
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            saveButton.topAnchor.constraint(equalTo: testButton.bottomAnchor, constant: 20),
            saveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            saveButton.heightAnchor.constraint(equalToConstant: 50),
            saveButton.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
}

struct MainVC_Provider: PreviewProvider {
    static var previews: some View {
        MainViewController().showPreview()
    }
}
