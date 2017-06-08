//
//  RectangleView1.m
//  CoreGraphicDemo
//
//  Created by supozheng on 2017/6/8.
//  Copyright © 2017年 supozheng. All rights reserved.
//

#import "RectangleView1.h"

//画圆角矩形
@implementation RectangleView1


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    UIBezierPath* aPath = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:4.0];
    
    aPath.lineWidth = 4.0;
    aPath.lineCapStyle = kCGLineCapRound;
    aPath.lineJoinStyle = kCGLineCapRound;
    UIColor *color = [UIColor colorWithRed:0 green:0 blue:0.7 alpha:1];
    [color set];
    
    [aPath stroke];
}


@end
