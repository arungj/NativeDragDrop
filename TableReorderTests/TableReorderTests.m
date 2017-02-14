//
//  TableReorderTests.m
//  TableReorderTests
//
//  Created by Arun Jasmine on 2/10/17.
//  Copyright © 2017 Arun Jasmine. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"
#import "MainTableViewCell.h"

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

- (void) testFirstRow {
    UIWindow *w = [UIApplication sharedApplication].keyWindow;
    ViewController *vc = (id)w.rootViewController;
    MainTableViewCell *cell = [vc.mainTableview cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
    NSString *cellText = cell.label.text;
    XCTAssertTrue([cellText hasSuffix:@"1"], @"list numbering should start with 1");
}

- (void) testAppTitle {
    UIWindow *w = [UIApplication sharedApplication].keyWindow;
    ViewController *vc = (id)w.rootViewController;
    UINavigationBar *navBar = [[vc.view subviews] objectAtIndex:0];
    NSString *appTitle = navBar.topItem.title;
    XCTAssertTrue([appTitle isEqualToString:@"Table Reorder"] , @"App title should be Table Reorder");
}

@end
