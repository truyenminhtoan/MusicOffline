//
//  AppDelegate.m
//  MusicOffline
//
//  Created by Truyen Minh Toan on 5/27/15.
//  Copyright (c) 2015 Truyen Minh Toan. All rights reserved.
//

#import "AppDelegate.h"
#import "MFSideMenuContainerViewController.h"
#import "Constants.h"
#import "Utils.h"
#import "MusicListView.h"
#import "MFLeftMenuView.h"
#import "RootViewController.h"
#import "Globle.h"
#import "TabarView1.h"
#import "TabarView2.h"



@interface AppDelegate ()

@end

@implementation AppDelegate
@synthesize window=_window;
@synthesize navigationController=_navigationController;
@synthesize rootViewController = _rootViewController;
@synthesize tabarController=_tabarController;

@synthesize myTabBarController;
@synthesize firstViewController,secondViewController;

+ (AppDelegate *) getInstance {
    return (AppDelegate *) [[UIApplication sharedApplication] delegate];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    /*
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    self.window=[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    MusicListLoadMoreView *viewController=[[MusicListLoadMoreView alloc] initWithNibName:nil bundle:nil];
    
    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];
     
     */
    
    /*
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    self.window=[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    MusicListView *viewController=[[MusicListView alloc] initWithNibName:nil bundle:nil];
    _navigationController =[[UINavigationController alloc] initWithRootViewController:viewController];
    _navigationController.navigationBar.translucent=NO;
    
    
    MFLeftMenuView *leftMenuView=[[MFLeftMenuView alloc]init];
    MFSideMenuContainerViewController *container=[MFSideMenuContainerViewController containerWithCenterViewController:_navigationController leftMenuViewController:leftMenuView rightMenuViewController:nil];
    
    self.window.rootViewController = container;
    [self.window makeKeyAndVisible];
    
    UIImage *logo = [UIImage imageNamed:@"bg_naviage_amnhac.png"];
    [[UINavigationBar appearance] setBackgroundImage:logo forBarMetrics:UIBarMetricsDefault];
    */
    
    
    /*
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    [Globle shareInstance].globleWidth = screenRect.size.width; //屏幕宽度
    [Globle shareInstance].globleHeight = screenRect.size.height-20;  //屏幕高度（无顶栏）
    [Globle shareInstance].globleAllHeight = screenRect.size.height;  //屏幕高度（有顶栏）
    
    _rootViewController = [[RootViewController alloc] init];
    [self.window setRootViewController:_rootViewController];
    [self.window makeKeyAndVisible];
    */
    
    /*
    _window=[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    UIViewController *viewController1=[[TabarView1 alloc]initWithNibName:@"Tabview11" bundle:nil];
    UIViewController *viewController2=[[TabarView2 alloc]initWithNibName:@"Tabview12" bundle:nil];
    _tabarController=[[UITabBarController alloc]init];
    _tabarController.viewControllers=@[viewController1,viewController2];
    _window.rootViewController=_tabarController;
    [_window makeKeyAndVisible];
    */
    
    self.window=[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    self.firstViewController=[[FirstViewController alloc]initWithNibName:nil bundle:nil];
    self.secondViewController=[[SecondViewController alloc]initWithNibName:nil bundle:nil];
    NSArray *myViewController=[[NSArray alloc]initWithObjects:self.firstViewController,self.secondViewController, nil];
    
    self.tabarController=[[MyUITabBarViewController alloc]init];
    [self.tabarController setViewControllers:myViewController];
    [self.window addSubview:self.tabarController.view];
    self.window.backgroundColor=[UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
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
