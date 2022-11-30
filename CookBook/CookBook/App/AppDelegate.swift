//
//  AppDelegate.swift
//  CookBook
//
//  Created by Дария Григорьева on 27.11.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = TabBarController()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        return true
    }
}
