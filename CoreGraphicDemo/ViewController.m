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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addRectangleView];
    
    [self addRoundView];
    
    [self addLineView];
    
    [self addTriangleView];
    
    [self addWorldView];
}

//矩形视图
-(void)addRectangleView{
    CGRect rect = CGRectMake(20, 20, 30, 20);
    
    RectangleView *rectangleView = [[RectangleView alloc] initWithFrame:rect];
    [self.view addSubview:rectangleView];
    
    rect.origin.x = rect.origin.x + 40;
    RectangleView1 *rectangleView1 = [[RectangleView1 alloc] initWithFrame:rect];
    [self.view addSubview:rectangleView1];
}

//圆形视图
-(void)addRoundView{
    CGRect rect = CGRectMake(20, 50, 20, 20);
    RoundView *roudView = [[RoundView alloc] initWithFrame:rect];
    [self.view addSubview:roudView];
    
    rect.origin.x = rect.origin.x + 30;
    RoundView1 *roudView1 = [[RoundView1 alloc] initWithFrame:rect];
    [self.view addSubview:roudView1];
    
    rect.origin.x = rect.origin.x + 30;
    RoundView2 *roudView2 = [[RoundView2 alloc] initWithFrame:rect];
    [self.view addSubview:roudView2];
}

//线形视图
-(void)addLineView{
    CGRect rect = CGRectMake(20, 80, 40, 40);
    
    LineView *lineView = [[LineView alloc] initWithFrame:rect];
    [self.view addSubview:lineView];
    
    rect.origin.x = rect.origin.x + 50;
    LineView1 *lineView1 = [[LineView1 alloc] initWithFrame:rect];
    [self.view addSubview:lineView1];
}

//三角形视图
-(void)addTriangleView{
    CGRect rect = CGRectMake(20, 110, 40, 40);
    
    TriangleView *triangleView = [[TriangleView alloc] initWithFrame:rect];
    [self.view addSubview:triangleView];
}

//文字视图
-(void)addWorldView{
    CGRect rect = CGRectMake(20, 160, 200, 40);
    
    WorldView *worldView = [[WorldView alloc] initWithFrame:rect];
    [self.view addSubview:worldView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
