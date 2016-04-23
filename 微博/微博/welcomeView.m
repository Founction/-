//
//  welcomeView.m
//  微博
//
//  Created by 李胜营 on 16/4/22.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "welcomeView.h"
@interface welcomeView()
@property (weak, nonatomic) IBOutlet UIImageView *sloganV;
@property (weak, nonatomic) IBOutlet UIImageView *doubi;

@property (weak, nonatomic) IBOutlet UILabel *welLable;


@end
@implementation welcomeView

+ (instancetype)welcomeView{

    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self)owner:nil options:nil] lastObject];

}

- (void)didMoveToSuperview
{
    [super didMoveToSuperview];
    
    self.doubi.layer.cornerRadius = 50;
    self.doubi.layer.masksToBounds = YES;

    self.doubi.transform = CGAffineTransformMakeTranslation(0, 50);
    [UIView animateWithDuration:1 animations:^{
        
        self.sloganV.alpha = 0;
        [UIView animateWithDuration:0.5 animations:^{
            
            self.doubi.hidden = NO;
            
            self.doubi.transform = CGAffineTransformIdentity;
            
            self.welLable.alpha = 0;
            self.welLable.hidden = NO;
            
            [UIView animateWithDuration:0.5 animations:^{
            
                self.welLable.alpha = 1.0;
            
            } completion:^(BOOL finished){
                
                [self removeFromSuperview]; 
                
                
            
            }];
        
        }];
    }];
    
    
    
    
    
    



}
@end
