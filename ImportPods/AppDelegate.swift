//
//  AppDelegate.swift
//  ImportPods
//
//  Created by x15101xx on 2017/06/28.
//  Copyright © 2017年 AIT. All rights reserved.
//

import UIKit
import NCMB

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let applicationkey = "e038ad5fc0ace4be2cd36862d6948ab66cbd4eab1cb3f94e0f17078b0ef29146"
    let clientkey      = "2265a2d7d7155c1e4409bafb3332b73c549a79913744bdb5e79b10fc65768548"


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        //********** SDKの初期化 **********
        NCMB.setApplicationKey(applicationkey, clientKey: clientkey)
        //▼▼▼起動時に処理される▼▼▼
        //********** データストアにデータを保存 **********
        let obj = NCMBObject(className: "study")
        obj?.setObject("Yabuta", forKey: "name")
        obj?.saveInBackground({ (error) in
            if error != nil {
                // 保存に失敗した場合の処理
                
            }else{
                // 保存に成功した場合の処理
            }
        })
        //▲▲▲起動時に処理される▲▲▲
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

