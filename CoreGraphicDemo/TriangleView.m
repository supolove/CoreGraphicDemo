//
//  TriangleView.m
//  CoreGraphicDemo
//
//  Created by supozheng on 2017/6/8.
//  Copyright © 2017年 supozheng. All rights reserved.
//

#import "TriangleView.h"

//三角形
@implementation TriangleView

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
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextMoveToPoint(context, 20, 4);
    CGContextAddLineToPoint(context, 36, 36);
    CGContextAddLineToPoint(context, 4, 36);
    
    CGContextClosePath(context);
    CGContextStrokePath(context);
}


@end
