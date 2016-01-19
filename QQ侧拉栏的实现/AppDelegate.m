//
//  AppDelegate.m
//  QQ侧拉栏的实现
//
//  Created by mac on 15/12/29.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "AppDelegate.h"
#import "LeftSortsViewController.h"

#import "TabBarViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    
    TabBarViewController* tabVC = [[TabBarViewController alloc]init];
    
    UIViewController *c1=[[FirstViewController alloc]init];
    c1.title = @"first";
     c1.view.backgroundColor=[UIColor grayColor];
     c1.tabBarItem.title=@"消息";
    UINavigationController* nav1 = [[UINavigationController alloc]initWithRootViewController:c1];

     UIViewController *c2=[[SecondViewController alloc]init];
    c2.title = @"second";
     c2.view.backgroundColor=[UIColor whiteColor];
     c2.tabBarItem.title=@"联系人";
    UINavigationController* nav2 = [[UINavigationController alloc]initWithRootViewController:c2];

     UIViewController *c3=[[ThirdViewController alloc]init];
    c3.title = @"third";
    c3.view.backgroundColor=[UIColor orangeColor];
     c3.tabBarItem.title=@"动态";
    UINavigationController* nav3 = [[UINavigationController alloc]initWithRootViewController:c3];
    
    tabVC.viewControllers=@[nav1,nav2,nav3];
    self.mainNavigationController1 = nav1;
    self.mainNavigationController2 = nav2;
    self.mainNavigationController3 = nav3;
    
    LeftSortsViewController * lestVC = [[LeftSortsViewController alloc]init];
    self.LeftSlideVC = [[LeftSlideViewController alloc]initWithLeftView:lestVC andMainView:tabVC];
    self.window.rootViewController = self.LeftSlideVC;
    
    
    
    
    
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
