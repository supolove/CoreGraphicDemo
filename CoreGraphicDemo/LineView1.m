//
//  LineView1.m
//  CoreGraphicDemo
//
//  Created by supozheng on 2017/6/8.
//  Copyright © 2017年 supozheng. All rights reserved.
//

#import "LineView1.h"

//画曲线
@implementation LineView1

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
    
    //绘制曲线
    CGContextMoveToPoint(context, 0, 100);//移动到起始位置
    /*绘制二次贝塞尔曲线
     c:图形上下文
     cpx:控制点x坐标
     cpy:控制点y坐标
     x:结束点x坐标
     y:结束点y坐标
     */
    CGContextAddQuadCurveToPoint(context, 20, 0, 40, 40);
    
    CGContextMoveToPoint(context, 0, 40);

}


@end
