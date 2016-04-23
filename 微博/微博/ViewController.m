//
//  ViewController.m
//  微博
//
//  Created by 李胜营 on 16/4/21.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "ViewController.h"
#import "composeItemViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)add:(id)sender {
    composeItemViewController *composeItemVC = [[composeItemViewController alloc] init];
    
    [self presentViewController:composeItemVC animated:YES completion:nil];
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
