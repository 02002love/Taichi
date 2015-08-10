//
//  MainView.m
//  TaiChi
//
//  Created by JinWei on 15/8/9.
//  Copyright (c) 2015年 SongJinWei. All rights reserved.
//

#import "MainView.h"

#define WIDTH  [UIScreen mainScreen].bounds.size.width
#define HEIGHT  [UIScreen mainScreen].bounds.size.height


@implementation MainView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGFloat R= WIDTH*0.5;
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextAddEllipseInRect(context, CGRectMake(0, (HEIGHT - WIDTH)*0.5, 2*R, 2*R));
    CGContextStrokePath(context);
    
    //左半边大圆,右半边大圆自动
    CGContextAddArc(context,  WIDTH*0.5, HEIGHT*0.5, R , -M_PI_2, M_PI_2, 1);
    
    CGContextFillPath(context);
    //右半边中圆
    CGContextAddArc(context,  WIDTH*0.5, HEIGHT*0.5 +R*0.5, R*0.5, -M_PI_2, M_PI_2, 0);
    CGContextFillPath(context);
    
    //左半边中圆
    CGContextAddArc(context,  WIDTH*0.5, HEIGHT*0.5 -R*0.5, R*0.5, -M_PI_2, M_PI_2, 1);
    CGContextSetRGBFillColor(context, 1, 1, 1, 1);
    CGContextFillPath(context);
    
    //上小圆
    CGContextAddEllipseInRect(context, CGRectMake(WIDTH*0.5-R*0.125, HEIGHT*0.5 -R*0.5-R*0.125, R*0.25, R*0.25));
    CGContextSetRGBFillColor(context, 0, 0, 0, 1);
    CGContextFillPath(context);
    //下小圆
    CGContextAddEllipseInRect(context, CGRectMake(WIDTH*0.5-R*0.125, HEIGHT*0.5 +R*0.5-R*0.125, R*0.25, R*0.25));
    CGContextSetRGBFillColor(context, 1, 1, 1, 1);
    CGContextFillPath(context);
    
    
}

@end
