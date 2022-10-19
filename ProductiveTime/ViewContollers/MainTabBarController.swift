//
//  MainTabBarController.swift
//  ProductiveTime
//
//  Created by Алексей on 08.10.2022.
//

import SwiftUI

final class MainTabBarController: UITabBarController {
    
    private let tabBarAppearance = UITabBarAppearance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        setTabBar()
        setTabBar2()
        setViewControllers(viewControllers, animated: true)
    }
}

    // MARK: - Created View Controller
extension MainTabBarController {
    private func generateVC(viewController: UIViewController, titleVC: String, titleItem: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = titleItem
        title = titleVC
        viewController.tabBarItem.image = image
        return viewController
    }
    
    private func setTabBar2() {
        let mainVC = UINavigationController(
            rootViewController: generateVC(
                viewController: MainViewController(),
                titleVC: "Home",
                titleItem: "Home",
                image: UIImage(systemName: "house")
            )
        )
        let secondVC = UINavigationController(
            rootViewController: generateVC(
                viewController: SecondViewController(),
                titleVC: "Person",
                titleItem: "Profile",
                image: UIImage(systemName: "person")
            )
        )
        viewControllers = [mainVC, secondVC]
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


struct MainTabBarController_Provider: PreviewProvider {
    static var previews: some View {
        UINavigationController(rootViewController: MainTabBarController()).showPreview()
    }
}


// найстроки tabBar (заполнение элементами и все такое)
//    func tabBarController() {
//
//        let aboutVC = UINavigationController.init(rootViewController: NoutsViewContoller())
//        aboutVC.tabBarItem.image = UIImage(systemName: "person")
//        aboutVC.tabBarItem.title = "О нас"
//        let noutsVS = UINavigationController.init(rootViewController: AboutvViewController())
//        noutsVS.tabBarItem.image = UIImage(systemName: "pencil")
//        noutsVS.tabBarItem.title = "Записаться"
//
//        let galleryVS = UINavigationController.init(rootViewController: GalleryViewController())
//        galleryVS.tabBarItem.image = UIImage(systemName: "camera")
//        galleryVS.tabBarItem.title = "Фото"
//
//        viewControllers = [aboutVC, noutsVS, galleryVS]
//    }
