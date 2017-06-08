//
//  LineView.m
//  CoreGraphicDemo
//
//  Created by supozheng on 2017/6/8.
//  Copyright © 2017年 supozheng. All rights reserved.
//

#import "LineView.h"

@implementation LineView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor lightGrayColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(context, 2, 10); // 起点
    CGContextAddLineToPoint(context, self.frame.size.width-2, 10); //终点
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor); // 颜色
    CGContextSetLineWidth(context, 2.0f); // 线的宽度
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineJoin(context, kCGLineJoinRound);
    CGContextStrokePath(context);

}


@end
