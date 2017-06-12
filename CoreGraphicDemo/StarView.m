//
//  StarView.m
//  CoreGraphicDemo
//
//  Created by supozheng on 2017/6/12.
//  Copyright © 2017年 supozheng. All rights reserved.
//

#import "StarView.h"

@implementation StarView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //设置背景颜色
        self.backgroundColor = [UIColor lightGrayColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGFloat width = rect.size.width;
    UIBezierPath* aPath = [UIBezierPath bezierPath];
    aPath.lineWidth = 3.0;
    
    aPath.lineCapStyle = kCGLineCapRound; //线条拐角
    aPath.lineJoinStyle = kCGLineCapRound; //终点处理
    UIColor *color = [UIColor redColor];
    [color set];
    
    // Set the starting point of the shape.
    NSArray *arrayM = [self getStarKeyPoints];
    

    [aPath addLineToPoint:[arrayM[0] CGPointValue]];

    [aPath addLineToPoint:[arrayM[2] CGPointValue]];
    
    [aPath addLineToPoint:[arrayM[4] CGPointValue]];

    [aPath addLineToPoint:[arrayM[1] CGPointValue]];
    
    // Draw the lines
//    [aPath addLineToPoint:CGPointMake(width/3.0*2.0 + 5, width)];
//    [aPath addLineToPoint:CGPointMake(0, width/3 + 5)];
//    [aPath addLineToPoint:CGPointMake(width, width/3 + 5)];
//    [aPath addLineToPoint:CGPointMake(width/3-5, width)];
//    [aPath addLineToPoint:CGPointMake(width/2, 0)];
    
    [aPath closePath];
    [aPath stroke];

}

- (NSArray *)getStarKeyPoints
{
    NSInteger topPointCount = 5;
    CGFloat radius = 30;
    CGPoint center = CGPointMake(self.frame.size.width / 2.0, radius);
    CGFloat sectionAngle = 2 * M_PI / topPointCount;
    
    NSMutableArray *keyPointsArray = [NSMutableArray array];
    CGPoint firstPoint = CGPointMake(center.x, 0);
    [keyPointsArray addObject:[NSValue valueWithCGPoint:firstPoint]];
    
    //外围顶点
    for (int i = 1; i < topPointCount; i++) {
        CGFloat x = cosf(i * sectionAngle - M_PI_2) * radius;
        CGFloat y = sinf(i * sectionAngle - M_PI_2) * radius;
        
        CGPoint point = CGPointMake(x + center.x, y + center.y);
        
        [keyPointsArray addObject:[NSValue valueWithCGPoint:point]];
    }
    
    //内交点
    NSMutableArray *crossPointsArray = [NSMutableArray array];
    
    //采用二元一次方程求解
    //AC点确定直线方程y = kx + b
    //过B点直线y = B.y
    for (int i = 0; i < topPointCount; i++) {
        CGPoint A = [keyPointsArray[i] CGPointValue];
        
        NSInteger index = i + 1;
        if (index > topPointCount - 1) {
            index -= topPointCount;
        }
        CGPoint B = [keyPointsArray[index] CGPointValue];
        
        index = i + 2;
        if (index > topPointCount - 1) {
            index -= topPointCount;
        }
        CGPoint C = [keyPointsArray[index] CGPointValue];
        
        index = i - 1;
        if (index < 0) {
            index += topPointCount;
        }
        CGPoint E = [keyPointsArray[index] CGPointValue];
        
        CGFloat F_x = 0.0, F_y = 0.0, k1 = 0.0, k2 = 0.0, b1 = 0.0, b2 = 0.0;
        
        if (A.x == C.x) {
            F_x = A.x;
        } else {
            k1 = (A.y - C.y) / (A.x - C.x);
            b1 = A.y - k1 * A.x;
        }
        
        if (B.x == E.x) {
            F_x = B.x;
        } else {
            k2 = (B.y - E.y) / (B.x - E.x);
            b2 = B.y - k2 * B.x;
        }
        
        if (A.x == C.x) {
            F_y = k2 * F_x + b2;
        }else if (B.x == E.x) {
            F_y = k1 * F_x + b1;
        }else{
            if (k1 == 0) {
                F_y = A.y;
                F_x = (F_y - b2) / k2;
            } else {
                F_y = (b1 * k2 - b2 * k1) / (k2 - k1);
                F_x = (F_y - b1) / k1;
            }
        }
        
        CGPoint pointF = CGPointMake(F_x, F_y);
        [crossPointsArray addObject:[NSValue valueWithCGPoint:pointF]];
    }
    
    //合并数据
    for (int i = 0; i < crossPointsArray.count; i++) {
        [keyPointsArray insertObject:crossPointsArray[i] atIndex:(i * 2 + 1)];
    }
    
    return keyPointsArray;
}


@end
