//
//  ManuItemButton.m
//  微博
//
//  Created by 李胜营 on 16/4/22.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "ManuItemButton.h"

@implementation ManuItemButton

- (void)awakeFromNib
{
    [self setUp];
    
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setUp];
    }
    return self;
}
- (void)setUp
{
    self.imageView.contentMode =  UIViewContentModeCenter;
    self.titleLabel.textAlignment =  NSTextAlignmentCenter;
    
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];


}
//视图的子控件布局用这个方法
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    
    self.imageView.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height * 0.8);
    self.titleLabel.frame = CGRectMake(0, self.bounds.size.height * 0.8, self.bounds.size.width, self.bounds.size.height * 0.2);


}
@end
