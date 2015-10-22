//
//  AppDelegate.m
//  WTFFrameBehaviorInIOS9
//
//  Created by DaidoujiChen on 2015/10/22.
//  Copyright © 2015年 DaidoujiChen. All rights reserved.
//

#import "AppDelegate.h"
#import "SimpleViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[SimpleViewController new]];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
