//
//  ViewController.m
//  HLSegmentView
//
//  Created by 郝靓 on 2018/8/1.
//  Copyright © 2018年 郝靓. All rights reserved.
//

#import "ViewController.h"
#import "HLSegementView.h"

@interface ViewController ()<HLSegementViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 80, 40);
    [button setTitle:@"button" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blueColor]];
    
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
  
    button.center = self.view.center;
    [self.view addSubview:button];
    [button addTarget:self action:@selector(processButton) forControlEvents:UIControlEventTouchUpInside];
}

-(void)processButton {
    
    NSArray * titlsary = @[@"视频信息",@"新浪新闻"];
    HLSegementView * segmentView1 = [[HLSegementView alloc] initWithFrame:CGRectMake(0, 200, 375, 40) titles:titlsary];
    segmentView1.isShowUnderLine = YES;
    segmentView1.delegate = self;
    [self.view addSubview:segmentView1];
    
    NSArray * titlss = @[@"视频",@"新浪新闻",@"热点",@"热门推荐",@"微博",@"网易",@"考拉",@"段子"];
    HLSegementView * segmentView = [[HLSegementView alloc] initWithFrame:CGRectMake(0, 300, 375, 40) titles:titlss];
    segmentView.selectIndex = 2;
    segmentView.isShowUnderLine = YES;
    segmentView.delegate = self;
    [self.view addSubview:segmentView];

    NSArray * titlssss = @[@"视频信息详细按钮",@"新浪新闻",@"热点",@"热门推荐",@"微博",@"网易",@"考拉",@"段子"];
    HLSegementView * segmentView2 = [[HLSegementView alloc] initWithFrame:CGRectMake(0, 400, 375, 40) titles:titlssss];
    segmentView2.delegate = self;
    segmentView2.isShowUnderLine = NO;
    [self.view addSubview:segmentView2];
    

    
}

- (void)hl_didSelectWithIndex:(NSInteger)index{
    NSLog(@"代理实现的方法%ld",index);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
   
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
