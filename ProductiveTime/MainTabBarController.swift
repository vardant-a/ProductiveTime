//
//  MainTabBarController.swift
//  ProductiveTime
//
//  Created by Алексей on 08.10.2022.
//

import SwiftUI

final class MainTabBarController: UITabBarController {
    
    let mainVC = MainViewController()
    let secondVC = SecondViewController()
    let tabBarAppearance = UITabBarAppearance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
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

extension MainTabBarController {
    private func setTabBar() {
        tabBarAppearance.backgroundColor = UIColor.navTabColor
        
        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        } else {
            print("не сработало")
        }
    }
}


struct MainTabBarControllerProvider: PreviewProvider {
    static var previews: some View {
        MainTabBarController().showPreview()
    }
}
