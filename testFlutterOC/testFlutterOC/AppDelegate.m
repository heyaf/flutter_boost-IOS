//
//  AppDelegate.m
//  testFlutterOC
//
//  Created by mac on 2022/2/17.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <flutter_boost/FlutterBoost.h>
#import "BoostDelegate.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:[[ViewController alloc]init]];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    BoostDelegate *boostDelegate = [[BoostDelegate alloc]init];
    boostDelegate.navigationController = nav;
    [FlutterBoost.instance setup:application delegate:boostDelegate callback:^(FlutterEngine *engine) {
            
    }];
    return YES;
}



@end
