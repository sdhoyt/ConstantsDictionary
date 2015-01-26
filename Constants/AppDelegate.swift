//
//  AppDelegate.swift
//  Constants
//
//  Created by Sean Hoyt on 11/22/14.
//  Copyright (c) 2014 Sean Hoyt. All rights reserved.
//  Version 1.1.1
/*
    Changes in this version

    - Rounded edges on buttons
    - "Other units" does not appear if there are none
    - Red highlight when selected cell

*/

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    
    

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        //Set font to variable
        let font = UIFont(name: "BradleyHandITCTT-Bold", size: 25)
        //var topBarImage = UIImage(named: "newtitle.jpg") as UIImage?
        //UINavigationBar.appearance().setBackgroundImage(topBarImage,forBarMetrics: .Default)
        //Change Navigation bar color
        UINavigationBar.appearance().barTintColor = UIColor(red: 0.965 , green: 0.333, blue: 0.333, alpha: 1.0)
        //Change font of Navigation bar title
        UINavigationBar.appearance().titleTextAttributes = [NSFontAttributeName: font! ,NSForegroundColorAttributeName: UIColor.whiteColor()]
        //Change Navigation Bar Back button Color
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        //Change background image for Tabs
        UITabBar.appearance().backgroundImage = UIImage(named: "tabBar.png")
        //Chnage color of tab icons
        UITabBar.appearance().selectedImageTintColor = UIColor.whiteColor()
        
        
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

