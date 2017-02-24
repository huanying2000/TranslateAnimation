//
//  FilmCollectionViewCell.m
//  转场动画
//
//  Created by mac on 16/8/15.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "FilmCollectionViewCell.h"

@interface FilmCollectionViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *label;


@end

@implementation FilmCollectionViewCell

- (void)setModel:(FilmModel *)model{
    _model = model;
    
    self.imageView.image = [UIImage imageNamed:model.image];
    self.label.text = model.name;
}

- (void)awakeFromNib {
    self.backgroundColor = [UIColor whiteColor];
}

@end
