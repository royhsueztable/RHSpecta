//
//  RHSpectaTests.m
//  RHSpectaTests
//
//  Created by Roy Hsu on 2014/8/5.
//  Copyright (c) 2014年 RH. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Specta.h>
#import "RHViewController.h"

SpecBegin(Login)

describe(@"a user login", ^{
    __block RHViewController *viewController;
    
    beforeAll(^{
        viewController = [[RHViewController alloc] init];
    });
    
    // Before write a test, should check it failed / passed first.
    // After this actually failed / passed, you can remove this.
//    it(@"should fail", ^{
//        XCTAssertTrue(false);
//    });
    
    it(@"should fail to login if email is invalid", ^{
        NSString *email = @"";
        NSString *password = @"password";
        XCTAssertFalse([viewController loginWithEmail:email andPassword:password]);
    });
    
    it(@"should fail to login if password is invalid", ^{
        NSString *email = @"email";
        NSString *password = @"";
        XCTAssertFalse([viewController loginWithEmail:email andPassword:password]);
    });
    
    it(@"should receive login succeeded message", ^{
        NSString *email = @"email";
        NSString *password = @"password";
        XCTAssertTrue([viewController loginWithEmail:email andPassword:password]);
    });
});

SpecEnd