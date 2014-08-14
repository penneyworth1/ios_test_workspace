//
//  MainViewController.m
//  LineaTest
//
//  Created by The Parking Spot on 8/13/14.
//  Copyright (c) 2014 Test Stuff. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor grayColor]];
    
    btnTest = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:btnTest];
    [btnTest setBackgroundColor:[UIColor darkGrayColor]];
    [btnTest setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [btnTest setTitle:@"test" forState:UIControlStateNormal];
    [btnTest addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    btnTest.frame = CGRectMake(20, 40, 200, 40);
    
    lblTest = [[UILabel alloc] init];
    lblTest.textColor = [UIColor blackColor];
    lblTest.text = @"-";
    [self.view addSubview:lblTest];
    lblTest.frame = CGRectMake(20, 90, 200, 40);
    
    lblTest2 = [[UILabel alloc] init];
    lblTest2.textColor = [UIColor blackColor];
    lblTest2.text = @"-";
    [self.view addSubview:lblTest2];
    lblTest2.frame = CGRectMake(20, 140, 200, 40);
    
    tfTest = [[UITextField alloc] init];
    [self.view addSubview:tfTest];
    [tfTest setBackgroundColor:[UIColor whiteColor]];
    tfTest.autocorrectionType = UITextAutocorrectionTypeNo;
    tfTest.autocapitalizationType = UITextAutocapitalizationTypeNone;
    tfTest.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    tfTest.textAlignment = NSTextAlignmentCenter;
    tfTest.delegate = self;
    tfTest.frame = CGRectMake(20, 190, 200, 40);
    
    
    dtDevice = [DTDevices sharedDevice];
    [dtDevice addDelegate:self];
    [dtDevice connect];
    
    
}

-(void)buttonPressed
{
    if([dtDevice isPresent:DEVICE_TYPE_LINEA])
        lblTest2.text = @"Device present";
    else
        lblTest2.text = @"Device not found";
}

-(void)barcodeData:(NSString *)barcode type:(int)type
{
    tfTest.text = barcode;
}


-(void)connectionState:(int)state {
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateStyle:NSDateFormatterLongStyle];
    
	switch (state)
    {
		case CONN_DISCONNECTED:
            lblTest.text = @"Disconnected";
            break;
		case CONN_CONNECTING:
            lblTest.text = @"Trying to connect...";
			break;
		case CONN_CONNECTED:
            lblTest.text = @"Connected";
			break;
	}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
