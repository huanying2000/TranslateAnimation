//
//  OUNavAnimation.h
//  转场动画
//
//  Created by mac on 16/8/13.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/*
 UIViewControllerAnimatedTransitioning 执行动画的协议
 */

@interface OUNavAnimation : NSObject<UIViewControllerAnimatedTransitioning>

@property (nonatomic,assign)CGRect imageRect;
@property (nonatomic,strong)UIImage *image;
@property (nonatomic,assign)BOOL isPush;
@property (nonatomic,assign)CGRect desRect;

@end
