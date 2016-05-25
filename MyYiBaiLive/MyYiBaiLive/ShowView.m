//
//  ShowView.m
//  MyYiBaiLive
//
//  Created by mac on 16/5/24.
//  Copyright © 2016年 zhiYou. All rights reserved.
//
#define SCREENWIDTH [[UIScreen mainScreen] bounds].size.width
#define SCREENHEIGHT [[UIScreen mainScreen] bounds].size.height
#define IMAGEWIDTH 60
#define IMAGEHEIGHT 60
#import "ShowView.h"

@implementation ShowView
-(id)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}
//添加背景图片
-(void)addBackgroundImageView
{
    UIImageView*backgroundImageView=[[UIImageView alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    backgroundImageView.image=[UIImage imageNamed:@"bg@2x副本.jpg"];
    [self addSubview:backgroundImageView];
}
//添加下面的绿色按钮
-(void)addGreenButton
{
    float hangJianJu=(SCREENHEIGHT-2*IMAGEHEIGHT)/12;
    float lieJianJu=(SCREENWIDTH-5*IMAGEWIDTH)/6;
    for (int a=0; a<10; a++) {
        float i=a%5;
        float j=a/5;
        float x=lieJianJu+(lieJianJu+IMAGEWIDTH)*i;
        float y=hangJianJu+(hangJianJu+IMAGEHEIGHT)*j;
        UIButton *myButton=[[UIButton alloc]init];
        [self addSubview:myButton];
        myButton.frame=CGRectMake(x, y+SCREENHEIGHT/2+SCREENHEIGHT/10, IMAGEWIDTH, IMAGEHEIGHT);
        [myButton setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"s_%d",(a+1)%10]] forState:UIControlStateNormal];
    }
}

@end
