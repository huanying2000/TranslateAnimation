//
//  OUNavigationController.m
//  转场动画
//
//  Created by mac on 16/8/15.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "OUNavigationController.h"
#import "OUNavAnimation.h"

@interface OUNavigationController ()<UINavigationControllerDelegate>


@property (nonatomic,assign)CGRect origionRect;
@property (nonatomic,assign)CGRect desRect;
@property (nonatomic,assign)UIImage *image;
@property (nonatomic,assign)BOOL isPush;

@end

@implementation OUNavigationController


- (void)pushViewController:(UIViewController *)viewController WithImageView:(UIImageView *)imageView desRect:(CGRect)desRect{
    self.delegate = self;
    self.origionRect = [imageView convertRect:imageView.frame toView:self.view];
    NSLog(@"%f %f %f %f",self.origionRect.origin.x,self.origionRect.origin.y,self.origionRect.size.width,self.origionRect.size.height);
    self.desRect = desRect;
    self.image = imageView.image;
    self.isPush = YES;
    [super pushViewController:viewController animated:YES];
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated{
    self.isPush = NO;
    return [super popViewControllerAnimated:animated];
}

#pragma mark - UINavigationControllerDelegate
- (id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{
    OUNavAnimation *animation = [[OUNavAnimation alloc] init];
    animation.imageRect = self.origionRect;
    animation.image = self.image;
    animation.isPush = self.isPush;
    animation.desRect = self.desRect;
    if (!self.isPush) {
        self.delegate = nil;
    }
    return animation;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
