//
//  ItemButton.m
//  微博
//
//  Created by 李胜营 on 16/4/22.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "ItemButton.h"

@implementation ItemButton
- (instancetype)initImage:(UIImage *)image withLabeTitleName:(NSString *)titleName
{
    self = [super init];
    if (self)
    {
        self.image = image;
        self.string = titleName;
    }
    return self;

}
@end
