//
//  ViewController.m
//  BREXBadgeViewDemo
//
//  Created by 毕博洋 on 2018/2/23.
//  Copyright © 2018年 毕博洋. All rights reserved.
//

#import "ViewController.h"

#import "BREXBadgeView.h"
#import "UIView+DragBlast.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 40, 30)];
    label1.text = @"啦啦";
    [self.view addSubview:label1];
    
    
    
    BREXBadgeView *badgeView1 = [BREXBadgeView badgeViewForType:DOT_BADGE_VIEW];
    badgeView1.frame = CGRectMake(130, 100, 8, 8);
    badgeView1.badgeNum = 1;
    [self.view addSubview:badgeView1];
    
    BREXBadgeView *badgeView2 = [BREXBadgeView badgeViewForType:NEW_BADGE_VIEW];
    badgeView2.frame = CGRectMake(100, 150, 40, 23);
    badgeView2.badgeNum = 1;
    [self.view addSubview:badgeView2];
    
    BREXBadgeView *badgeView3 = [BREXBadgeView badgeViewForType:NUMBER_BADGE_VIEW];
    badgeView3.frame = CGRectMake(100, 200, 25, 17);
    badgeView3.badgeNum = 99;
    [self.view addSubview:badgeView3];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
