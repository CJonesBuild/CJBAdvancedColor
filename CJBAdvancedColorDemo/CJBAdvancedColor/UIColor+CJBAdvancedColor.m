//
//  UIColor+CJBAdvancedColor
//	version 1.0
//
//  Created by Chris Jones on 10/10/16.
//  Copyright © 2016 Chris Jones (@CJonesBuild). All rights reserved.
//
// This code is distributed under the terms and conditions of the MIT license.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.


#import "UIColor+CJBAdvancedColor.h"

@implementation UIColor (UIColor)

// CJB CUSTOM COLOR PALETTE
+ (UIColor *)bloodColor {
	return [self colorFromHex:@"EA1215" alpha:1.0f];
}
+ (UIColor *)canaryColor {
	return [self colorFromHex:@"FDF400" alpha:1.0f];
}
+ (UIColor *)goldColor {
	return [self colorFromHex:@"FDC400" alpha:1.0f];
}
+ (UIColor *)lightoceanColor {
	return [self colorFromHex:@"23ADF3" alpha:1.0f];
}
+ (UIColor *)oceanColor {
	return [self colorFromHex:@"0059B2" alpha:1.0f];
}
+ (UIColor *)darkoceanColor {
	return [self colorFromHex:@"004080" alpha:1.0f];
}
+ (UIColor *)roseColor {
	return [self colorFromHex:@"F5A2C8" alpha:1.0f];
}
+ (UIColor *)coralColor {
	return [self colorFromHex:@"EA008D" alpha:1.0f];
}
+ (UIColor *)violetColor {
	return [self colorFromHex:@"802294" alpha:1.0f];
}
+ (UIColor *)tealColor {
	return [self colorFromHex:@"1EA99E" alpha:1.0f];
}
+ (UIColor *)tangerineColor {
	return [self colorFromHex:@"F16E00" alpha:1.0f];
}
+ (UIColor *)lightgrassColor {
	return [self colorFromHex:@"B2C533" alpha:1.0f];
}
+ (UIColor *)grassColor {
	return [self colorFromHex:@"1BA84A" alpha:1.0f];
}
+ (UIColor *)darkgrassColor {
	return [self colorFromHex:@"0D5425" alpha:1.0];
}
+ (UIColor *)verylightgrayColor {
	return [self colorFromHex:@"E5E5E5" alpha:1.0f];
}

// FLAT UI = https://www.materialui.co/flatuicolors
+ (UIColor *)flatui_turquoiseColor {
	return [self colorFromHex:@"1abc9c" alpha:1.0f];
}
+ (UIColor *)flatui_emerlandColor {
	return [self colorFromHex:@"#2ecc71" alpha:1.0f];
}
+ (UIColor *)flatui_peterriverColor {
	return [self colorFromHex:@"#3498db" alpha:1.0f];
}
+ (UIColor *)flatui_amethystColor {
	return [self colorFromHex:@"#9b59b6" alpha:1.0f];
}
+ (UIColor *)flatui_wetasphaultColor {
	return [self colorFromHex:@"#34495e" alpha:1.0f];
}
+ (UIColor *)flatui_greenseaColor {
	return [self colorFromHex:@"#16a085" alpha:1.0f];
}
+ (UIColor *)flatui_nephritisColor {
	return [self colorFromHex:@"#27ae60" alpha:1.0f];
}
+ (UIColor *)flatui_belizeholeColor {
	return [self colorFromHex:@"#2980b9" alpha:1.0f];
}
+ (UIColor *)flatui_wisteriaColor {
	return [self colorFromHex:@"#8e44ad" alpha:1.0f];
}
+ (UIColor *)flatui_midnightblueColor {
	return [self colorFromHex:@"2c3e50" alpha:1.0f];
}
+ (UIColor *)flatui_sunflowerColor {
	return [self colorFromHex:@"f1c40f" alpha:1.0f];
}
+ (UIColor *)flatui_carrotColor {
	return [self colorFromHex:@"e67e22" alpha:1.0f];
}
+ (UIColor *)flatui_alizarinColor {
	return [self colorFromHex:@"e74c3c" alpha:1.0f];
}
+ (UIColor *)flatui_cloudsColor {
	return [self colorFromHex:@"ecf0f1" alpha:1.0f];
}
+ (UIColor *)flatui_concreteColor {
	return [self colorFromHex:@"95a5a6" alpha:1.0f];
}
+ (UIColor *)flatui_orangeColor {
	return [self colorFromHex:@"f39c12" alpha:1.0f];
}
+ (UIColor *)flatui_pumpkinColor {
	return [self colorFromHex:@"d35400" alpha:1.0f];
}
+ (UIColor *)flatui_pomegranateColor {
	return [self colorFromHex:@"c0392b" alpha:1.0f];
}
+ (UIColor *)flatui_silverColor {
	return [self colorFromHex:@"bdc3c7" alpha:1.0f];
}
+ (UIColor *)flatui_asbestosColor {
	return [self colorFromHex:@"7f8c8d" alpha:1.0f];
}

// COLOR FACTORIES
/**
 * Translates a hex color into a usable UIColor.
 *
 * @note This method translates hex+alpha to rgba and outputs a UIColor object with that color.
 *
 * @param hexString the hex value of the color.
 * @param alphaValue [0.0 to 1.0] the alpha value (transparency) of the returned UIColor.
 * @return A UIColor object with the rgba value equivolent to the hex string.
 */
+ (UIColor *)colorFromHex:(NSString *)hexString alpha:(float)alphaValue {
	unsigned rgbValue = 0;
	unsigned startingLocation = 0;
	if ([[hexString substringToIndex:1] isEqualToString:@"#"]) {
		startingLocation = 1;
	}
	NSScanner *scanner = [NSScanner scannerWithString:[[NSString stringWithString:hexString] uppercaseString]];
	[scanner setScanLocation:startingLocation]; // bypass '#' character if used
	[scanner scanHexInt:&rgbValue];
	return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:alphaValue];
}

/**
 * Creates a 1px image based on the UIColor.
 *
 * @note This method creates a 1px image based on UIColor that can be used with [UIButton setBackgroundImage: forState:] to allow simple color to be used on custom buttons (such as UIControlStateNormal, UIControlStateHighlighted, UIControlStateSelected).
 *
 * @param color the UIColor object to be used to fill the image.
 * @return A UIImage object filled with the UIColor specified.
 */
+ (UIImage *)imageFromColor:(UIColor *)color {
	CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
	UIGraphicsBeginImageContext(rect.size);
	CGContextRef context = UIGraphicsGetCurrentContext();

	CGContextSetFillColorWithColor(context, [color CGColor]);
	CGContextFillRect(context, rect);

	UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();

	return image;
}

@end
