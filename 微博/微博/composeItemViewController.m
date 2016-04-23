//
//  composeItemViewController.m
//  微博
//
//  Created by 李胜营 on 16/4/22.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "composeItemViewController.h"
#import "ItemButton.h"
#import "ManuItemButton.h"

@interface composeItemViewController ()
/* manuitembutton */
@property (strong, nonatomic) ManuItemButton * manuItemB;
/* model of itembutton */
@property (strong, nonatomic) ItemButton * itemB;

/* nsarray */
@property (strong, nonatomic) NSArray * arryItems;

/* buttons */
@property (strong, nonatomic) NSMutableArray * buttons;

/* timer */
@property (strong, nonatomic) NSTimer * timer;

/* buttonIndex */
@property (assign, nonatomic) int btnIndex;

@end

@implementation composeItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIImage *image1 = [UIImage imageNamed:@"tabbar_compose_camera"];
    UIImage *image2 = [UIImage imageNamed:@"tabbar_compose_idea"];
    UIImage *image3 = [UIImage imageNamed:@"tabbar_compose_lbs"];
    UIImage *image4 = [UIImage imageNamed:@"tabbar_compose_more"];
    UIImage *image5 = [UIImage imageNamed:@"tabbar_compose_photo"];
    UIImage *image6 = [UIImage imageNamed:@"tabbar_compose_review"];
 
    ItemButton *item1 = [[ItemButton alloc] initImage:image1 withLabeTitleName:@"签到"];
    ItemButton *item2 = [[ItemButton alloc] initImage:image2 withLabeTitleName:@"签到"];
    ItemButton *item3 = [[ItemButton alloc] initImage:image3  withLabeTitleName:@"签到"];
    ItemButton *item4 = [[ItemButton alloc] initImage:image4  withLabeTitleName:@"签到"];
    ItemButton *item5 = [[ItemButton alloc] initImage:image5 withLabeTitleName:@"签到"];
    ItemButton *item6 = [[ItemButton alloc] initImage:image6  withLabeTitleName:@"签到"];
    

    self.arryItems = @[item1,item2,item3,item4,item5,item6];
    
    
    
    int cols = 3;
    int col = 0;
    int row = 0;
    int wh = 100;
    int origY = 300;
    int count = (int)self.arryItems.count;
    CGFloat margin = (self.view.bounds.size.width - cols * wh)/ (cols + 1);
    self.buttons = [NSMutableArray array];
    for (int i = 0; i < count; i++)
    {
        col = i % cols;
        row = i / cols;
        
        CGFloat x = margin + col * (margin + wh);
        CGFloat y = origY + row * (margin + wh);
        ItemButton *itemB = self.arryItems[i];
//        UIButton *btn = [ManuItemButton buttonWithType:UIButtonTypeCustom];可以
        ManuItemButton *btn = [[ManuItemButton alloc] initWithFrame:CGRectMake(x, y, wh, wh)];
        btn.frame = CGRectMake(x, y, wh, wh);
        
//       btn.imageView.image = itemB.image; 会出现问题
//       btn.titleLabel.text = itemB.string;
        [btn setImage:itemB.image forState:UIControlStateNormal];
        
        [btn setTitle:itemB.string forState:UIControlStateNormal];
        
        [self.buttons addObject:btn];
        
        btn.transform = CGAffineTransformMakeTranslation(0, self.view.bounds.size.height);
        [self.view addSubview:btn];
    }
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(timeChange) userInfo:nil repeats:YES];
    
    

}
- (void)timeChange
{
    if (self.btnIndex == self.buttons.count)
    {
        [self.timer invalidate];
        return;
    }
    
    UIButton *btn = self.buttons[self.btnIndex];
    [self setUpOneAnimation:btn];
    self.btnIndex++;

}

- (void)setUpOneAnimation:(UIButton *)btn
{
    [UIView animateWithDuration:0.5 animations:^{
        
        btn.transform = CGAffineTransformIdentity;
    }];
    


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
