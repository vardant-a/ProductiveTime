//
//  ViewController.swift
//  ProductiveTime
//
//  Created by Алексей on 08.10.2022.
//

import UIKit

final class ViewController: UIViewController {
    
    private var button: UIButton {
        let button = UIButton()
        return button
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        setNavigationBar()
        
    }
}

    // MARK: - Navigation Bar
extension ViewController {
    
    private func setNavigationBar() {
        title = "test"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

