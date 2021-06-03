//
//  BNRAppDelegate.m
//  Hypnosister
//
//  Created by John Gallagher on 1/6/14.
//  Copyright (c) 2014 John Gallagher. All rights reserved.
//

#import "AppDelegate.h"
#import "HypnosisView.h"
#import "Masonry.h"
#import "ViewController.h"
#import "MineViewController.h"
#import "NameAndColorCellTableViewCell.h"
#import "MyTableViewController.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UITabBarController *tabBarController = [UITabBarController new];
    tabBarController.tabBar.tintColor = [UIColor blackColor];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    /*
//    self.window.rootViewController = [[UIViewController alloc]init];
//    CGRect firstFrame = self.window.bounds;
    CGRect firstFrame = CGRectMake(160, 240, 100, 150);
    HypnosisView *firstView = [[HypnosisView alloc] initWithFrame:firstFrame];
    firstView.backgroundColor = [UIColor redColor];
    CGRect secondFrame = CGRectMake(20, 30, 50, 50);
    HypnosisView *secondView = [[HypnosisView alloc] initWithFrame:secondFrame];
    secondView.backgroundColor = [UIColor orangeColor];
    [self.window addSubview:firstView];
    [self.window addSubview:secondView];
     */
    
    ViewController *viewController = [[ViewController alloc] init];
//    viewController.view.backgroundColor = [UIColor systemPinkColor];
//    viewController.tabBarItem.title = @"颜色";
//    viewController.tabBarItem.image = [UIImage imageNamed:@"Hypno.png"];
    
    //UIViewController *mineView = [[UIViewController alloc] init];
    MineViewController * mineView = [MineViewController new];
//    NameAndColorCellTableViewCell *mineView = [NameAndColorCellTableViewCell new];
    
    mineView.view.backgroundColor = [UIColor whiteColor];
    mineView.tabBarItem.title = @"我的";
    mineView.tabBarItem.image = [UIImage imageNamed:@"mine"];
    
    UIViewController *info_view = [[UIViewController alloc] init];
    info_view.view.backgroundColor = [UIColor redColor];
    info_view.tabBarItem.title = @"资讯";
    info_view.tabBarItem.image = [UIImage imageNamed:@"information"];
    
    UIViewController *market_view = [[UIViewController alloc] init];
    market_view.view.backgroundColor = [UIColor greenColor];
    market_view.tabBarItem.title = @"行情";
    market_view.tabBarItem.image = [UIImage imageNamed:@"market"];
    
    UIViewController * trade_view = [UIViewController new];
    trade_view.view.backgroundColor = [UIColor blueColor];
    trade_view.tabBarItem.title = @"交易";
    trade_view.tabBarItem.image = [UIImage imageNamed:@"trade"];
    
    UIViewController *select_view = [[UIViewController alloc] init];
    select_view.view.backgroundColor = [UIColor lightGrayColor];
    select_view.tabBarItem.title = @"自选股";
    select_view.tabBarItem.image = [UIImage imageNamed:@"select_stock"];

    MyTableViewController * myTableView = [MyTableViewController new];
    tabBarController.viewControllers = @[select_view,trade_view, market_view,info_view, myTableView];
    tabBarController.selectedIndex = 4;
    UINavigationController * navController = [[UINavigationController alloc]initWithRootViewController:tabBarController];
    [navController setNavigationBarHidden:YES animated:YES];//消除顶部的空白，实为导航栏
    self.window.rootViewController = navController;
//    self.window.rootViewController = tabBarController;
//    self.window.rootViewController = myTableView;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end