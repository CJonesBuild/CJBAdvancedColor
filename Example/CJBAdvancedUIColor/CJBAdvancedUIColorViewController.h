//
//  CJBAdvancedUIColorViewController.h
//  CJBAdvancedUIColor
//
//  Created by chris@jonsium.com on 10/12/2017.
//  Copyright (c) 2017 chris@jonsium.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CJBAdvancedUIColorViewController : UIViewController
<UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, weak) IBOutlet UILabel *lblMain;
@property (nonatomic, weak) IBOutlet UILabel *lblSubtitle;
@property (nonatomic, weak) IBOutlet UILabel *lblInverted;

@property (nonatomic, strong) IBOutlet UICollectionView *collectionView;

@end
