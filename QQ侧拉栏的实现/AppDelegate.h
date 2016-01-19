//
//  AppDelegate.h
//  QQ侧拉栏的实现
//
//  Created by mac on 15/12/29.
//  Copyright © 2015年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeftSlideViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic,strong) UINavigationController * mainNavigationController1;
@property (nonatomic,strong) UINavigationController * mainNavigationController2;
@property (nonatomic,strong) UINavigationController * mainNavigationController3;

@property (nonatomic,strong) LeftSlideViewController * LeftSlideVC;
@end

