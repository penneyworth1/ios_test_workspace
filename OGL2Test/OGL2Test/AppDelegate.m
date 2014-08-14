//
//  AppDelegate.m
//  OGL2Test
//
//  Created by The Parking Spot on 7/31/14.
//  Copyright (c) 2014 Test Stuff. All rights reserved.
//

#import "AppDelegate.h"
#import "EAGLView.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window makeKeyAndVisible];
    
    
    TestViewController* viewController = [[TestViewController alloc] init];
    glView = [[EAGLView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [viewController.view addSubview:glView];
    
    [self.window setRootViewController:viewController];
    
    glView.animationInterval = 1.0 / 60.0;
	[glView startAnimation];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	glView.animationInterval = 1.0 / 5.0;
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	glView.animationInterval = 1.0 / 60.0;
}

@end
