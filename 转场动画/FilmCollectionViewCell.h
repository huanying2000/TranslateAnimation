//
//  FilmCollectionViewCell.h
//  转场动画
//
//  Created by mac on 16/8/15.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FilmModel.h"

@interface FilmCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic,strong) FilmModel *model;


@end
