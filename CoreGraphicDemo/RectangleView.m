//
//  RectangleView.m
//  CoreGraphicDemo
//
//  Created by supozheng on 2017/6/8.
//  Copyright © 2017年 supozheng. All rights reserved.
//

#import "RectangleView.h"

//画矩形
@implementation RectangleView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

//绘制图形
-(void)drawRect:(CGRect)rect{
    //获取上下文，可以理解为画布
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(context, 100/255.0, 100/255.0, 100/255.0, 1);
    CGContextAddRect(context, CGRectMake(0, 0, self.frame.size.width, self.frame.size.height));
    CGContextDrawPath(context, kCGPathFill);

}

@end
