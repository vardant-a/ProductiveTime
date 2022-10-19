//
//  LogScreenViewController.swift
//  ProductiveTime
//
//  Created by Алексей on 19.10.2022.
//

import SwiftUI

final class LogScreenViewController: UIViewController {
    
    
    private lazy var logInButton: UIButton = {
       let button = UIButton()
        button.setTitle("testLogScreen", for: .normal)
        button.backgroundColor = .systemRed
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "test"
        
        addSubviews(logInButton)
        setConstraints()
    }
}

// MARK: - Set Constraints for elements
extension LogScreenViewController {
    
    private func setConstraints() {
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logInButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            logInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            logInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
    }
}

// MARK: - Adding Subviews
extension LogScreenViewController {

    private func addSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
}

struct LogScreenVC_Provider: PreviewProvider {
    static var previews: some View {
        LogScreenViewController().showPreview()
    }
}
