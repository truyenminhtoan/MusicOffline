//
//  AppDelegate.h
//  MusicOffline
//
//  Created by Truyen Minh Toan on 5/27/15.
//  Copyright (c) 2015 Truyen Minh Toan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>
#import "RootViewController.h"
#import "MyUITabBarViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) UINavigationController *navigationController;
@property (strong, nonatomic) RootViewController *rootViewController;
@property(strong,nonatomic) UITabBarController *tabarController;

@property(strong,nonatomic) MyUITabBarViewController *myTabBarController;
@property(strong,nonatomic) FirstViewController *firstViewController;
@property(strong,nonatomic) SecondViewController *secondViewController;

+ (AppDelegate*)getInstance;

@end

