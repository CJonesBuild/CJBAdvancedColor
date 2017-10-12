//
//  CJBAdvancedUIColorViewController.m
//  CJBAdvancedUIColor
//
//  Created by chris@jonsium.com on 10/12/2017.
//  Copyright (c) 2017 chris@jonsium.com. All rights reserved.
//

#import "CJBAdvancedUIColorViewController.h"
#import "UIColor+CJBAdvancedUIColor.h"
#import "SupplimentryCollectionReusableView.h"

@interface CJBAdvancedUIColorViewController ()

@property (nonatomic, strong) NSArray *cjbColors;
@property (nonatomic, strong) NSArray *fuiColors;

@end

@implementation CJBAdvancedUIColorViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

	self.cjbColors = @[@{@"bloodColor":[UIColor bloodColor]},
					   @{@"canaryColor":[UIColor canaryColor]},
					   @{@"goldColor":[UIColor goldColor]},
					   @{@"lightoceanColor":[UIColor lightoceanColor]},
					   @{@"oceanColor":[UIColor oceanColor]},
					   @{@"darkoceanColor":[UIColor darkoceanColor]},
					   @{@"roseColor":[UIColor roseColor]},
					   @{@"coralColor":[UIColor coralColor]},
					   @{@"violetColor":[UIColor violetColor]},
					   @{@"tealColor":[UIColor tealColor]},
					   @{@"tangerineColor":[UIColor tangerineColor]},
					   @{@"lightgrassColor":[UIColor lightgrassColor]},
					   @{@"grassColor":[UIColor grassColor]},
					   @{@"verylightgrayColor":[UIColor verylightgrayColor]}
					   ];

	self.fuiColors = @[@{@"flatui_turquoiseColor":[UIColor flatui_turquoiseColor]},
					   @{@"flatui_emerlandColor":[UIColor flatui_emerlandColor]},
					   @{@"flatui_peterriverColor":[UIColor flatui_peterriverColor]},
					   @{@"flatui_amethystColor":[UIColor flatui_amethystColor]},
					   @{@"flatui_wetasphaultColor":[UIColor flatui_wetasphaultColor]},
					   @{@"flatui_greenseaColor":[UIColor flatui_greenseaColor]},
					   @{@"flatui_nephritisColor":[UIColor flatui_nephritisColor]},
					   @{@"flatui_belizeholeColor":[UIColor flatui_belizeholeColor]},
					   @{@"flatui_wisteriaColor":[UIColor flatui_wisteriaColor]},
					   @{@"flatui_midnightblueColor":[UIColor flatui_midnightblueColor]},
					   @{@"flatui_sunflowerColor":[UIColor flatui_sunflowerColor]},
					   @{@"flatui_carrotColor":[UIColor flatui_carrotColor]},
					   @{@"flatui_alizarinColor":[UIColor flatui_alizarinColor]},
					   @{@"flatui_cloudsColor":[UIColor flatui_cloudsColor]},
					   @{@"flatui_concreteColor":[UIColor flatui_concreteColor]},
					   @{@"flatui_orangeColor":[UIColor flatui_orangeColor]},
					   @{@"flatui_pumpkinColor":[UIColor flatui_pumpkinColor]},
					   @{@"flatui_pomegranateColor":[UIColor flatui_pomegranateColor]},
					   @{@"flatui_silverColor":[UIColor flatui_silverColor]},
					   @{@"flatui_asbestosColor":[UIColor flatui_asbestosColor]}
					   ];

}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle {
	return UIStatusBarStyleLightContent;
}

#pragma mark - COLLECTION VIEW

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
	if (section==0) {
		return [self.cjbColors count];
	} else {
		return [self.fuiColors count];
	}
}
- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
	return 2;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
	UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ColorSample" forIndexPath:indexPath];

	NSDictionary *item;
	if (indexPath.section==0) {
		item = [self.cjbColors objectAtIndex:indexPath.row];
	} else if (indexPath.section==1) {
		item = [self.fuiColors objectAtIndex:indexPath.row];
	}
	NSString *color = [[item allKeys] objectAtIndex:0];

	cell.backgroundColor = [item objectForKey:color];
	return cell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView
				  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
	float width = ((collectionView.frame.size.width-12)/6);
	return CGSizeMake(width, 32.f);
}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {

	return CGSizeMake(collectionView.frame.size.width, 20.f);
}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section {

	switch (section) {
		default:
			return CGSizeMake(collectionView.frame.size.width, 10.f);
			break;
	}
}
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {

	SupplimentryCollectionReusableView *reusableview = nil;

	if (kind == UICollectionElementKindSectionHeader) {
		SupplimentryCollectionReusableView *headerview = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header" forIndexPath:indexPath];
		headerview.backgroundColor = [UIColor verylightgrayColor];
		headerview.title.textColor = [UIColor grayColor];

		if (indexPath.section==0) {
			headerview.title.text = @"CJB Custom";
		} else if (indexPath.section==1) {
			headerview.title.text = @"Flat UI";
		}

		reusableview = headerview;

	} else if (kind == UICollectionElementKindSectionFooter) {
		SupplimentryCollectionReusableView *footerview = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"footer" forIndexPath:indexPath];
		footerview.backgroundColor = [UIColor whiteColor];
		footerview.title.text = @"";

		reusableview = footerview;
	}

	return reusableview;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
	NSDictionary *item;
	if (indexPath.section==0) {
		item = [self.cjbColors objectAtIndex:indexPath.row];
	} else if (indexPath.section==1) {
		item = [self.fuiColors objectAtIndex:indexPath.row];
	}
	NSString *colorString = [[item allKeys] objectAtIndex:0];
	self.lblSubtitle.text = colorString;

	UIColor *color = [item objectForKey:colorString];
	self.view.backgroundColor = color;

	self.lblMain.textColor = [color complementaryColor];
	self.lblSubtitle.textColor = [color readableComplementaryColor];
	self.lblInverted.textColor = [color invertColor];
}
@end
