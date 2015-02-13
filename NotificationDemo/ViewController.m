//
//  ViewController.m
//  NotificationDemo
//
//  Created by Krupa-iMac on 07/02/15.
//  Copyright (c) 2015 TheAppGuruz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(testNotificationPosted:) name:@"TEST_NOTIFICATION" object:nil];
}

-(void)testNotificationPosted:(NSNotification *)notification
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Notification!" message:[NSString stringWithFormat:@"Test notification fired with test object '%@'", notification.object] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    alert = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
