//
//  SceneDelegate.swift
//  ProductiveTime
//
//  Created by Алексей on 08.10.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    // Вызывается сразу после метода application didFinishLaunchingWithOptions
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        window = UIWindow(frame: UIScreen.main.bounds)
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let navigationBarController = UINavigationController(rootViewController: TestView())
        window?.rootViewController = navigationBarController
        window?.windowScene = windowScene
        window?.makeKeyAndVisible()
        
    }
    
    // Вызывается перед переходом приложения в активное состояние
    func sceneDidDisconnect(_ scene: UIScene) {
        print(#function)
    }
    
    // Переход приложения в фазу активного состояния
    func sceneDidBecomeActive(_ scene: UIScene) {
        print(#function)
    }
    
    // Вызывается перед переходом приложения в фоновый режим
    func sceneWillResignActive(_ scene: UIScene) {
        print(#function)
    }
    
    // Вызывается после перехода приложения в фоновый режим
    func sceneWillEnterForeground(_ scene: UIScene) {
        print(#function)
    }
    
    // Вызывается после перехода приложения в фоновый режим
    func sceneDidEnterBackground(_ scene: UIScene) {
        print(#function)
    }
}
