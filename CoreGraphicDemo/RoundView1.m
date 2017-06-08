//
//  RoundView1.m
//  CoreGraphicDemo
//
//  Created by supozheng on 2017/6/8.
//  Copyright © 2017年 supozheng. All rights reserved.
//

#import "RoundView1.h"

//画环形
@implementation RoundView1

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
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBStrokeColor(context, 100/255.0, 100/255.0, 100/255.0, 1);
    CGContextSetLineWidth(context, self.frame.size.height/5);
    //(contex, x, y, 半径, 开始的角度, 结束的角度, clockwise)
    //x,y,是圆中心
    //clockwise 1，顺时针，0，逆时针
    CGContextAddArc(context, self.frame.size.height*0.5, self.frame.size.height*0.5, self.frame.size.height*0.5 - self.frame.size.height/5/2, 0, 2*M_PI, 1);
    CGContextDrawPath(context, kCGPathFill);
}


@end
