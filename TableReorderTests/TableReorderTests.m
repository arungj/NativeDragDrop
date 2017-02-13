//
//  TableReorderTests.m
//  TableReorderTests
//
//  Created by Arun Jasmine on 2/10/17.
//  Copyright © 2017 Arun Jasmine. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface TableReorderTests : XCTestCase

@end

@implementation TableReorderTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testNumRows {
    UIWindow *w = [UIApplication sharedApplication].keyWindow;
    ViewController *vc = (id)w.rootViewController;
    NSInteger numRows = [vc.mainTableview numberOfRowsInSection:0];
    XCTAssertTrue(numRows > 0, @"Table should have non zero rows");
}

@end
