//
//  AppDelegate.swift
//  LongPressAppIconDemo
//
//  Created by TeamLeaseRegtech on 24/06/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        if let shortcut = launchOptions?[UIApplication.LaunchOptionsKey.shortcutItem] as? UIApplicationShortcutItem {
            handleShortcut(shortcut)
        }
        
        return true
    }

    private func handleShortcut(_ shortCutItem:UIApplicationShortcutItem) {
        
        if (shortCutItem.type == "vineeth.co.search")
        {
            let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            if let vc:SearchViewController = mainStoryboard.instantiateViewController(withIdentifier: "SearchViewController") as? SearchViewController{
                self.window = UIWindow(frame: UIScreen.main.bounds)
                self.window?.rootViewController = vc
                self.window?.makeKeyAndVisible()
            }
            
        }
    }

}

