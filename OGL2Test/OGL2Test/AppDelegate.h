//
//  Hello_TriangleAppDelegate.h
//  Hello_Triangle
//
//  Created by Dan Ginsburg on 6/13/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestViewController.h"

@class EAGLView;

@interface AppDelegate : NSObject <UIApplicationDelegate> {
    //UIWindow *window;
    EAGLView *glView;
}

@property (strong, nonatomic) UIWindow *window;

//@property (nonatomic, retain) IBOutlet UIWindow *window;
//@property (nonatomic, retain) IBOutlet EAGLView *glView;

@end
