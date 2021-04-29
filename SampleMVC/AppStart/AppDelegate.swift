//
//  AppDelegate.swift
//  SampleMVC
//
//  Created by 김종권 on 2021/04/29.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var coordinator: Coordinator?
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        coordinator = Coordinator(window: window)
        coordinator?.run()
        return true
    }

}

