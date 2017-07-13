//
//  ViewController.m
//  MarqueeExample
//
//  Created by 王孔飞 on 2017/7/6.
//  Copyright © 2017年 fantasy. All rights reserved.
//

#import "ViewController.h"

#import "NavigationTitleView.h"

#define ScreenWidth   [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect frame1 = CGRectMake(30, 100, ScreenWidth - 100, 40);
    
    NavigationTitleView * titleView1 = [[NavigationTitleView alloc]initWithFrame:frame1 Text:@"缓缓飘落的枫叶像思念，我点燃烛火温暖岁末的秋天" andTitleFont:nil andTitleColor:[UIColor redColor]];
    [self.view addSubview:titleView1];
    
    NavigationTitleView * titleView = [[NavigationTitleView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth - 100, 30) Text:@"最美的不是下雨天，是曾与你躲过雨的屋檐" andTitleFont:[UIFont systemFontOfSize:18] andTitleColor:[UIColor redColor]];
    
    self.navigationItem.titleView = titleView;
 
    
    CGRect frame2 = CGRectMake(30, 150, ScreenWidth - 100, 40);
    NavigationTitleView * titleView3 = [[NavigationTitleView alloc]initWithFrame:frame2 Text:@"你说把爱渐渐放下回忆走更远" andTitleFont:[UIFont systemFontOfSize:13] andTitleColor:[UIColor greenColor]];
    [self.view addSubview:titleView3];
    
    CGRect frame3 = CGRectMake(30, 230, ScreenWidth - 100, 40);
    NavigationTitleView * titleView4 = [[NavigationTitleView alloc]initWithFrame:frame3 Text:@"海天连线的地方是那夕阳" andTitleFont:[UIFont systemFontOfSize:20] andTitleColor:[UIColor blackColor]];
    [self.view addSubview:titleView4];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [titleView4 updateText:@"木造的甲板一整遍是那金黄" andTitleFont:nil andTitleColor:[UIColor grayColor]];
    });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(6 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [titleView4 updateText:@"你背光的轮廓就像剪影一样，充满了想象，认谁都会爱上" andTitleFont:[UIFont systemFontOfSize:13] andTitleColor:[UIColor blackColor]];
    });
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
