//
//  AppDelegate.swift
//  form-test-portals
//
//  Created by Bryan Evans on 4/27/23.
//

import UIKit
import IonicPortals

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // Register Portals
//         PortalsRegistrationManager.shared.register(key: PORTALS KEY HERE)
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}
extension Portal {
    
    static let myApp1 = Self(
        name: "myApp1",
        initialContext:["innerHtml":"<form id=\'test\'><input id=\'one\' type=\'text\'/><button id=\'doneButton\' type=\'button\'>button</button></form>"]
    )
}
