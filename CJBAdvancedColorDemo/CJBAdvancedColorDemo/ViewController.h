//
//  ViewController.h
//  CJBAdvancedColorDemo
//
//  Created by Chris Jones on 10/10/16.
//  Copyright © 2016 Chris Jones (@CJonesBuild). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, weak) IBOutlet UILabel *lblMain;
@property (nonatomic, weak) IBOutlet UILabel *lblSubtitle;
@property (nonatomic, weak) IBOutlet UILabel *lblInverted;

@property (nonatomic, strong) IBOutlet UICollectionView *collectionView;

@end

