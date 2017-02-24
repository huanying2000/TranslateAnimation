//
//  OUNavigationController.h
//  转场动画
//
//  Created by mac on 16/8/15.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OUNavigationController : UINavigationController
/*
 ViewController 目标控制器
 ImageView 所要移动的ImageView
 desRect 目标位置矩形
 */

- (void)pushViewController:(UIViewController *)viewController WithImageView:(UIImageView *)imageView desRect:(CGRect)desRect;









@end
