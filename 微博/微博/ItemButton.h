//
//  ItemButton.h
//  微博
//
//  Created by 李胜营 on 16/4/22.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ItemButton : NSObject

/* picture */
@property (strong, nonatomic)  UIImage * image;
/* text */
@property (strong, nonatomic) NSString * string;

- (instancetype)initImage:(UIImage *)image withLabeTitleName:(NSString *)titleName;

@end
