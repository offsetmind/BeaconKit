//
//  AppDelegate.swift
//  BeaconKit
//
//  Created by Igor Makarov on 25/04/2017.
//

import UIKit
import BeaconKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, BeaconScannerDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        BeaconScanner.shared.delegate = self
        BeaconScanner.shared.start()
        return true
    }
    
    func beaconScanner(_ beaconScanner: BeaconScanner, didDiscover beacon: Beacon) {
        print("Discovered beacon: \(beacon)")
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
}
