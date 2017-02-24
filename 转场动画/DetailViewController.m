//
//  DetailViewController.m
//  转场动画
//
//  Created by mac on 16/8/15.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "DetailViewController.h"
#import "OUNavigationController.h"

@interface DetailViewController ()

@property (nonatomic,strong) UIImageView *topView;
@property (nonatomic,strong)UILabel *nameLB;
@property (nonatomic,strong)UIButton *closeButton;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.topView];
    
    [self.topView addSubview:self.nameLB];
    
    [self.view addSubview:self.closeButton];
    
    self.view.backgroundColor = [UIColor colorWithRed:250/255.0 green:240/255.0 blue:240/255.0 alpha:1];

}


- (UIImageView *)topView{
    if (!_topView) {
        _topView = [[UIImageView alloc] init];
        _topView.frame = CGRectMake(0, 0, self.view.bounds.size.width, 220);
        _topView.userInteractionEnabled = YES;
        _topView.contentMode = UIViewContentModeScaleAspectFill;
    }
    return _topView;
}

- (UILabel *)nameLB{
    if (!_nameLB) {
        _nameLB = [[UILabel alloc] initWithFrame:CGRectMake(140, 170, 250, 40)];
        _nameLB.font = [UIFont boldSystemFontOfSize:17];
        _nameLB.textColor = [UIColor whiteColor];
    }
    return _nameLB;
}


- (UIButton *)closeButton
{
    if (!_closeButton) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button addTarget:self action:@selector(closeyemian) forControlEvents:UIControlEventTouchUpInside];
        [button setImage:[UIImage imageNamed:@"close"] forState:UIControlStateNormal];
        button.frame = CGRectMake(10, 30, 30, 30);
        
        _closeButton = button;
    }
    return _closeButton;
}

-(void)closeyemian{
    NSLog(@"是不是可以点击呢");
    [(OUNavigationController *)self.navigationController popViewControllerAnimated:YES];
}

-(void)setName:(NSString *)name{
    self.nameLB.text = name;
}
-(void)setCover:(NSString *)cover{
    [self.topView setImage:[UIImage imageNamed:cover]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
