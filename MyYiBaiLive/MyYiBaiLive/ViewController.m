//
//  ViewController.m
//  MyYiBaiLive
//
//  Created by mac on 16/5/24.
//  Copyright © 2016年 zhiYou. All rights reserved.
//

#import "ViewController.h"
#import "ShowView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ShowView*myShowView=[[ShowView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    [self.view addSubview:myShowView];
    [myShowView addBackgroundImageView];
    [myShowView addGreenButton];
}
@end
