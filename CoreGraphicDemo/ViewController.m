//
//  ViewController.m
//  CoreGraphicDemo
//
//  Created by supozheng on 2017/6/8.
//  Copyright © 2017年 supozheng. All rights reserved.
//

#import "ViewController.h"
#import "RectangleView.h"
#import "RectangleView1.h"
#import "RoundView.h"
#import "RoundView1.h"
#import "RoundView2.h"
#import "LineView.h"
#import "TriangleView.h"
#import "WorldView.h"
#import "LineView1.h"
#import "StarView.h"

@interface ViewController ()
@property(nonatomic,strong)UIScrollView *scrollview;
@property(nonatomic,assign)CGFloat screenWidth;
@property(nonatomic,assign)CGFloat screenHeight;
@property(nonatomic,assign)CGFloat itemHeight;
@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.screenWidth = self.view.frame.size.width;
    self.screenHeight = self.view.frame.size.height;
    self.itemHeight = 100;
    self.scrollview = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 20, self.screenWidth, self.screenHeight - 20)];
    self.scrollview.bounces = YES;
    
    //six item
    self.scrollview.contentSize = CGSizeMake(self.view.frame.size.width, 100 * 6);
    
    [self addRectangleView];
    
    [self addRoundView];
    
    [self addLineView];
    
    [self addTriangleView];
    
    [self addWorldView];
    
    [self addStarView];
}

//矩形视图
-(void)addRectangleView{
    UIView *views = [[UIView alloc] initWithFrame:CGRectMake(0, 20, self.screenWidth, self.itemHeight)];
    [self.view addSubview:views];
    
    RectangleView *rectangleView = [[RectangleView alloc] initWithFrame:CGRectMake(10, 10, 80, 50)];
    [views addSubview:rectangleView];
    
    RectangleView1 *rectangleView1 = [[RectangleView1 alloc] initWithFrame:CGRectMake(100, 10, 80, 50)];
    [views addSubview:rectangleView1];
}

//圆形视图
-(void)addRoundView{
    UIView *views = [[UIView alloc] initWithFrame:CGRectMake(0, 20 + self.itemHeight, self.screenWidth, self.itemHeight)];
    [self.view addSubview:views];
    
    RoundView *roudView = [[RoundView alloc] initWithFrame:CGRectMake(10, 10, 80, 80)];
    [views addSubview:roudView];
    
    RoundView1 *roudView1 = [[RoundView1 alloc] initWithFrame:CGRectMake(100, 10, 80, 80)];
    [views addSubview:roudView1];
    
    RoundView2 *roudView2 = [[RoundView2 alloc] initWithFrame:CGRectMake(190, 10, 80, 80)];
    [views addSubview:roudView2];
}

//线形视图
-(void)addLineView{
    UIView *views = [[UIView alloc] initWithFrame:CGRectMake(0, 20 + self.itemHeight*2, self.screenWidth, self.itemHeight)];
    [self.view addSubview:views];
    
    LineView *lineView = [[LineView alloc] initWithFrame:CGRectMake(10, 10, 80, 30)];
    [views addSubview:lineView];
    
    LineView1 *lineView1 = [[LineView1 alloc] initWithFrame:CGRectMake(100, 10, 80, 30)];
    [views addSubview:lineView1];
}

//三角形视图
-(void)addTriangleView{
    UIView *views = [[UIView alloc] initWithFrame:CGRectMake(0, 20 + self.itemHeight*3, self.screenWidth, self.itemHeight)];
    [self.view addSubview:views];
    
    TriangleView *triangleView = [[TriangleView alloc] initWithFrame:CGRectMake(0, 0, 80, 80)];
    [views addSubview:triangleView];
}

//文字视图
-(void)addWorldView{
    UIView *views = [[UIView alloc] initWithFrame:CGRectMake(0, 20 + self.itemHeight*4, self.screenWidth, self.itemHeight)];
    [self.view addSubview:views];
    
    WorldView *worldView = [[WorldView alloc] initWithFrame:CGRectMake(10, 10, 200, 80)];
    [views addSubview:worldView];
}

//五角星视图
-(void)addStarView{
    UIView *views = [[UIView alloc] initWithFrame:CGRectMake(0, 20 + self.itemHeight*5, self.screenWidth, self.itemHeight)];
    [self.view addSubview:views];
    
    StarView *startView = [[StarView alloc] initWithFrame:CGRectMake(10, 10, 80, 80)];
    [views addSubview:startView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
