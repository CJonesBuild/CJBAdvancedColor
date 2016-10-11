//
//  ViewController.m
//  CJBAdvancedColorDemo
//
//  Created by Chris Jones on 10/10/16.
//  Copyright © 2016 Chris Jones (@CJonesBuild). All rights reserved.
//

#import "ViewController.h"
#import "UIColor+CJBAdvancedColor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.view setBackgroundColor:[UIColor colorFromHex:@"" alpha:1.0];
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
