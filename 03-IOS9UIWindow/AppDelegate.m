//
//  AppDelegate.m
//  03-IOS9UIWindow
//
//  Created by 苏浩楠 on 16/2/1.
//  Copyright © 2016年 苏浩楠. All rights reserved.
//

#import "AppDelegate.h"
#import "SHNTopWindowViewController.h"

@interface AppDelegate ()
/**创建新的window*/
@property (nonatomic,strong) UIWindow *topWindow;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.topWindow = [[UIWindow alloc] init];
    self.topWindow.frame = application.statusBarFrame;  //状态栏的位置坐标
    self.topWindow.windowLevel = UIWindowLevelAlert;    //设置优先级
    self.topWindow.rootViewController = [[SHNTopWindowViewController alloc] init]; //设置根控制器
    self.topWindow.backgroundColor = [UIColor clearColor];
    self.topWindow.hidden = NO;
    
    
    
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
