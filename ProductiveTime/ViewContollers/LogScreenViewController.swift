//
//  LogScreenViewController.swift
//  ProductiveTime
//
//  Created by Алексей on 19.10.2022.
//

import SwiftUI

final class LogScreenViewController: UIViewController {
    
    // MARK: - Private lazy properties
    
    //Login Image
    private lazy var loginImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Login")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    // Title
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .labelColor
        label.font = .systemFont(ofSize: 25, weight: UIFont.Weight.bold)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var customStackView = UIStackView()

    // Button LogIn
    private lazy var logInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .basicButtonColor
        
        return button
    }()
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addSubviews(loginImage, titleLabel, logInButton)
        setConstraints()
    }
}

// MARK: - Set Constraints for elements
extension LogScreenViewController {
    
    private func setConstraints() {
        // LoginImage
        loginImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            loginImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginImage.widthAnchor.constraint(equalToConstant: 250),
            loginImage.heightAnchor.constraint(equalToConstant: 250)
        ])
        
        // titleLabel
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: loginImage.bottomAnchor, constant: 30)
        ])
        
        //LogInButton
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logInButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -140),
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
// MARK: - Preview ViewController
struct LogScreenVC_Provider: PreviewProvider {
    static var previews: some View {
        LogScreenViewController().showPreview()
    }
}
