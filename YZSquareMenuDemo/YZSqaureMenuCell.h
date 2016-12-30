//
//  YZSqaureMenuCell.h
//  YZSquareMenu
//
//  Created by Shin on 2016/12/31.
//  Copyright © 2016年 Shin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YZSquareMenuCell : UICollectionViewCell

/* 图标*/
@property(nonatomic,strong) UIImageView *iconImage ;

/* title*/
@property(nonatomic,strong) UILabel *iconTitle ;

/* 分割线*/
@property(nonatomic,assign) NSInteger *lines ;

@end

