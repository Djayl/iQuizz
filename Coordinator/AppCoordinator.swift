//
//  MainCoordinator.swift
//  iQuizz
//
//  Created by MacBook DS on 04/12/2020.
//

import Foundation
import RxSwift
import RxRelay


class AppCoordinator: BaseCoordinator {
    var window = UIWindow(frame: UIScreen.main.bounds)
    
    override func start() {
        navigationController.navigationBar.isHidden = true
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        // TODO: here you could check if user is signed in and show appropriate screen
        let coordinator = SignInCoordinator()
        coordinator.navigationController = navigationController
        start(coordinator: coordinator)
    }
}
 
protocol SignInListener {
    func didSignIn()
}
 
extension AppCoordinator: SignInListener {
    func didSignIn() {
        print("Signed In")
        // TODO: Navigate to Dashboard
    }
}
