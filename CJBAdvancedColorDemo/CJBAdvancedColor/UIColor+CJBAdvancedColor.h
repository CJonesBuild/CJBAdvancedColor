//
//  UIColor+CJBAdvancedColor.h
//
//
//  Created by Chris Jones on 10/10/16.
//  Copyright © 2016 Chris Jones (@CJonesBuild). All rights reserved.
//

#import <UIKit/UIKit.h>

//company brand primary colors, find more on https://brandcolors.net/
#define COLOR_SPOTIFY			@"2EBD59"
#define COLOR_SOUNDCLOUD		@"FF8800"
#define COLOR_PANDORA			@"005483"
#define COLOR_ITUNES			@"007AFF"
#define COLOR_SHAZAM			@"0088ff"
#define COLOR_SKYPE				@"00aff0"
#define COLOR_TWITTER			@"55acee"
#define COLOR_FACEBOOK			@"3b5998"
#define COLOR_GOOGLE_PLUS		@"dd4b39"
#define COLOR_SNAPCHAT			@"fffc00"
#define COLOR_WHATSAPP			@"43d854"
#define COLOR_GOOGLE			@"4285f4"
#define COLOR_YOUTUBE			@"cd201f"
#define COLOR_WINDOWS			@"00bcf2"
#define COLOR_WINDOWS_PHONE		@"68217a"
#define COLOR_XBOX				@"52b043"
#define COLOR_PERISCOPE			@"3aa4c6"
#define COLOR_YELP				@"af0606"
#define COLOR_LYFT				@"ff00bf"
#define COLOR_UBER				@"09091a"
#define COLOR_NEST				@"00afd8"
#define COLOR_NETFLIX			@"e50914"
#define COLOR_ROKU				@"6f1ab1"
#define COLOR_HULU				@"6bb03e"
#define COLOR_IMDB				@"f5de50"


//interface builder default colors
#define COLOR_IB_TUNGSTEN		@"333333"
#define COLOR_IB_MIDGRAY		@"686868"
#define COLOR_IB_HINT_OF_GRAY	@"6F7179"


@interface UIColor (UIColor)

// CJB Advanced color palette
+ (UIColor *)bloodColor;
+ (UIColor *)canaryColor;
+ (UIColor *)goldColor;
+ (UIColor *)lightoceanColor;
+ (UIColor *)oceanColor;
+ (UIColor *)darkoceanColor;
+ (UIColor *)roseColor;
+ (UIColor *)coralColor;
+ (UIColor *)violetColor;
+ (UIColor *)tealColor;
+ (UIColor *)tangerineColor;
+ (UIColor *)lightgrassColor;
+ (UIColor *)grassColor;
+ (UIColor *)verylightgrayColor;

// Flat UI color palette
+ (UIColor *)flatui_turquoiseColor;
+ (UIColor *)flatui_emerlandColor;
+ (UIColor *)flatui_peterriverColor;
+ (UIColor *)flatui_amethystColor;
+ (UIColor *)flatui_wetasphaultColor;
+ (UIColor *)flatui_greenseaColor;
+ (UIColor *)flatui_nephritisColor;
+ (UIColor *)flatui_belizeholeColor;
+ (UIColor *)flatui_wisteriaColor;
+ (UIColor *)flatui_midnightblueColor;
+ (UIColor *)flatui_sunflowerColor;
+ (UIColor *)flatui_carrotColor;
+ (UIColor *)flatui_alizarinColor;
+ (UIColor *)flatui_cloudsColor;
+ (UIColor *)flatui_concreteColor;
+ (UIColor *)flatui_orangeColor;
+ (UIColor *)flatui_pumpkinColor;
+ (UIColor *)flatui_pomegranateColor;
+ (UIColor *)flatui_silverColor;
+ (UIColor *)flatui_asbestosColor;


+ (UIColor *)colorFromHex:(NSString *)hexString alpha:(float)alphaValue;
+ (UIImage *)imageFromColor:(UIColor *)color;

@end

@interface CJBAdvancedColor : NSObject


@end
