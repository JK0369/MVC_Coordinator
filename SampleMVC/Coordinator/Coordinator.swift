//
//  Coordinator.swift
//  SampleMVC
//
//  Created by 김종권 on 2021/04/29.
//

import UIKit

protocol FirstControllerDelegate: AnyObject {
    func run()
    func onAction()
}

final class Coordinator: FirstControllerDelegate {
    let window: UIWindow
    var navigationController: UINavigationController?

    lazy var firstViewController: FirstViewController = {
        let controller = FirstViewController()
        controller.coordinator = self
        return controller
    }()

    lazy var secondViewController: SecondViewController = {
        let controller = SecondViewController()
        controller.coordinator = self
        return controller
    }()

    init(window: UIWindow) {
        self.window = window
    }

    func run() {
        navigationController = UINavigationController(rootViewController: firstViewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }

    func onAction() {
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}
