//
//  ViewController.m
//  转场动画
//
//  Created by mac on 16/8/13.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "OUHomeView.h"
#import "FilmModel.h"
#import "FilmCollectionViewCell.h"
#import "OUNavigationController.h"
#import "DetailViewController.h"

@interface ViewController () <UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic,strong) OUHomeView *homeView;
@property (nonatomic,strong)NSArray *filmArray;

@end

@implementation ViewController

- (NSArray *)filmArray{
    if (!_filmArray) {
        _filmArray = [FilmModel filmArray];
    }
    return _filmArray;
}

- (OUHomeView *)homeView{
    if (!_homeView) {
        _homeView = [[OUHomeView alloc] initWithFrame:self.view.bounds dataSource:self delegate:self];
    }
    return _homeView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    [self.view addSubview:self.homeView];
}


#pragma mark UICollectionViewDelegate,UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.filmArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    FilmCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.model = self.filmArray[indexPath.item];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"hahahhaa ");
    [self startAnimationForIndexPath:indexPath];
}


- (void)startAnimationForIndexPath:(NSIndexPath *)indexPath{
    DetailViewController* vc = [[DetailViewController alloc] init];
    FilmCollectionViewCell* cell = (FilmCollectionViewCell*)[self.homeView cellForItemAtIndexPath:indexPath];
    [vc setName:cell.model.name];
    [vc setCover:cell.model.cover];
    [((OUNavigationController*)self.navigationController) pushViewController:vc WithImageView:cell.imageView desRect:CGRectMake(20, 150, cell.imageView.bounds.size.width, cell.imageView.bounds.size.height)];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
