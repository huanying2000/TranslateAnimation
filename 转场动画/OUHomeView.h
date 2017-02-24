//
//  OUHomeView.h
//  转场动画
//
//  Created by mac on 16/8/15.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OUHomeView : UICollectionView

- (instancetype) initWithFrame:(CGRect)frame dataSource:(id <UICollectionViewDataSource>)dateSource delegate:(id <UICollectionViewDelegate>)delegate;

@end
