//
//  RoundView2.m
//  CoreGraphicDemo
//
//  Created by supozheng on 2017/6/8.
//  Copyright © 2017年 supozheng. All rights reserved.
//

#import "RoundView2.h"

@implementation RoundView2

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
    CGContextSetRGBFillColor(context, 10/255.0, 150/255.0, 250/255.0, 1);
    CGContextSetRGBStrokeColor(context, 10/255.0, 150/255.0, 250/255.0, 1);
    CGContextSetLineWidth(context, self.frame.size.height/10);
    
    CGContextAddArc(context, self.frame.size.height*0.5, self.frame.size.height*0.5, self.frame.size.height*0.5 - self.frame.size.height/10/2, 0, 2*M_PI, 1);
    CGContextDrawPath(context, kCGPathStroke);
    CGContextSaveGState(context);
    
    CGContextSetRGBStrokeColor(context, 155/255.0, 150/255.0, 250/255.0, 1);
    CGContextAddArc(context, self.frame.size.height*0.5, self.frame.size.height*0.5, self.frame.size.height*0.5 - self.frame.size.height/4, 0, 2*M_PI, 1);
    CGContextDrawPath(context, kCGPathStroke);
}

@end
