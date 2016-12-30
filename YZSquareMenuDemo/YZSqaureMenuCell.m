//
//  YZSqaureMenuCell.m
//  YZSquareMenu
//
//  Created by Shin on 2016/12/31.
//  Copyright © 2016年 Shin. All rights reserved.
//

#import "YZSqaureMenuCell.h"

@interface YZSquareMenuCell ()

@end

@implementation YZSquareMenuCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor whiteColor];
        _iconTitle = [[UILabel alloc]init];
        _iconImage =[[UIImageView alloc]init];
        
        [self.contentView addSubview:self.iconImage];
        [self.contentView addSubview:self.iconTitle];
        
        [_iconImage setFrame:CGRectMake(self.frame.size.width/3/2+5, 15, self.frame.size.width*2/3-10, self.frame.size.width*2/3-10)];
        [_iconTitle setFrame:CGRectMake(0, self.frame.size.width*3/4, self.frame.size.width, self.frame.size.width/4)];
        [_iconTitle setTextColor:[UIColor blackColor]];
        [_iconTitle setFont:[UIFont systemFontOfSize:14]];
        _iconTitle.textAlignment = NSTextAlignmentCenter;
        
        
        
    }
    return self;
}



@end

