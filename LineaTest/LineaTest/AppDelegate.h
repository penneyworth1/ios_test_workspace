//
//  AppDelegate.h
//  LineaTest
//
//  Created by The Parking Spot on 8/13/14.
//  Copyright (c) 2014 Test Stuff. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    MainViewController * mainViewController;
}

@property (strong, nonatomic) UIWindow *window;

@end
