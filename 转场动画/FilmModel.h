//
//  FilmModel.h
//  转场动画
//
//  Created by mac on 16/8/15.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FilmModel : NSObject

@property (nonatomic,copy) NSString *image;

@property (nonatomic,copy) NSString *name;

@property (nonatomic,assign) NSString *cover;

+(NSArray *)filmArray;


@end
