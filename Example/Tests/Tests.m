//
//  CJBAdvancedUIColorTests.m
//  CJBAdvancedUIColorTests
//
//  Created by chris@jonsium.com on 10/12/2017.
//  Copyright (c) 2017 chris@jonsium.com. All rights reserved.
//

@import XCTest;
#import "UIColor+CJBAdvancedUIColor.h"

@interface Tests : XCTestCase
@property (nonatomic) UIColor *test;

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
	_test = nil;
}


- (void)tearDown
{
	_test = nil;
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testHexConversionSpeed {

	[self measureBlock:^{
		for (int i = 0; i<100000; i++){
			_test = [UIColor colorFromHex:@"CDF900" alpha:1.0];
		}
	}];
}
- (void) testHexConversionSpeedWithHashTag {

	[self measureBlock:^{
		for (int i = 0; i<100000; i++){
			_test = [UIColor colorFromHex:@"#CDF900" alpha:1.0];
		}
	}];
}
- (void) testRGBSpeed {
	[self measureBlock:^{
		for (int i = 0; i<100000; i++){
			_test = [UIColor colorWithRed:0.803922 green:0.976471 blue:0.5 alpha:1.0];
			XCTAssert(_test==nil, @"_test = nil");
		}
	}];
}
@end
