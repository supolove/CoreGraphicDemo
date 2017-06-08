//
//  RoundView.m
//  CoreGraphicDemo
//
//  Created by supozheng on 2017/6/8.
//  Copyright © 2017年 supozheng. All rights reserved.
//

#import "RoundView.h"

//画圆形
@implementation RoundView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //必须要清理背景颜色，否则会显示矩形的背景颜色
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}
-(void)drawRect:(CGRect)rect{
    CGContextRef contex = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(contex, 100/255.0, 100/255.0, 100/255.0, 1);
    //(contex, x, y, 半径, 开始的角度, 结束的角度, clockwise)
    //x,y,是圆中心
    //clockwise 1，顺时针，0，逆时针
    CGContextAddArc(contex, self.frame.size.height*0.5, self.frame.size.height*0.5, self.frame.size.height*0.5, 0, 2*M_PI, 1);
    CGContextDrawPath(contex, kCGPathFill);
}

@end
