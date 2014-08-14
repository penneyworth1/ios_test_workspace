//
//  MainViewController.h
//  LineaTest
//
//  Created by The Parking Spot on 8/13/14.
//  Copyright (c) 2014 Test Stuff. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DTDevices.h"

@interface MainViewController : UIViewController <DTDeviceDelegate, UITextFieldDelegate>
{
    UIButton* btnTest;
    UILabel* lblTest;
    UILabel* lblTest2;
    UITextField* tfTest;
    
    DTDevices* dtDevice;
}

-(void)buttonPressed;

@end
