//
//  AppDelegate.swift
//  iQuizz
//
//  Created by MacBook DS on 04/12/2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let main = GameVC(viewModel: GameVM())
        window = UIWindow()
        
        self.window?.rootViewController = UINavigationController(rootViewController: main)
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
}

