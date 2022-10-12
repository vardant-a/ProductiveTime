//
//  MainTabBarController.swift
//  ProductiveTime
//
//  Created by Алексей on 08.10.2022.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    let mainVC = MainViewController()
    let secondVC = SecondViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            generateVC(
                viewController: mainVC,
                title: "Home",
                image: UIImage(systemName: "house")
            ),
            generateVC(
                viewController: secondVC,
                title: "Profile",
                image: UIImage(systemName: "person")
            )
        ]
        setViewControllers(viewControllers, animated: true)
    }
}

    // MARK: - Created View Controller
extension MainTabBarController {
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
}
