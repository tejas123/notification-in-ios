//
//  NextViewController.m
//  NotificationDemo
//
//  Created by Krupa-iMac on 07/02/15.
//  Copyright (c) 2015 TheAppGuruz. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)btnPostNotificationClicked:(id)sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"TEST_NOTIFICATION" object:@"TestObject"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
