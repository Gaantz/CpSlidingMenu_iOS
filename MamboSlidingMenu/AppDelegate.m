//
//  AppDelegate.m
//  MamboSlidingMenu
//
//  Created by Cristian on 3/07/15.
//  Copyright (c) 2015 Cristian. All rights reserved.
//

#import "RMenu_TableViewController.h"
#import "AppDelegate.h"
#import "SlideNavigationController.h"

@interface AppDelegate ()


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    /**
     *
     * Obtiene referencia del Storyboard.
     *
     **/
    
    UIStoryboard *mainStoryboard =
    [UIStoryboard storyboardWithName:@"Main" bundle: nil];

    /**
     *
     * Obtiene referencia del ViewController (Menu).
     *
     **/
    
    RMenu_TableViewController *rightMenu = (RMenu_TableViewController*)
    [mainStoryboard instantiateViewControllerWithIdentifier: @"RMenu"];

    
    /**
     *
     * Establece al RMenu_TableViewController como menu izquierdo.
     *
     **/
     
	[SlideNavigationController sharedInstance].rightMenu = rightMenu;
//    
//    [[UINavigationBar appearance] setBackIndicatorImage:[UIImage imageNamed:@"ic_dehaze.png"]];
//    [[UINavigationBar appearance] setBackIndicatorTransitionMaskImage:[UIImage imageNamed:@"ic_dehaze.png"]];
//    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -100)
//                                                         forBarMetrics:UIBarMetricsDefault];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
