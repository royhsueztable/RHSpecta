//
//  RHViewController.m
//  RHSpecta
//
//  Created by Roy Hsu on 2014/8/5.
//  Copyright (c) 2014年 RH. All rights reserved.
//

#import "RHViewController.h"

@interface RHViewController ()

@end

@implementation RHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)loginWithEmail:(NSString *)email andPassword:(NSString *)password
{
    // Check email and password are not empty.
    if (email && email.length > 0 && password && password.length > 0) {
        return YES;
    } else {
        return NO;
    }
}

@end
