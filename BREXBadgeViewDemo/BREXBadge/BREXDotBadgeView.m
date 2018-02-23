//
//  BREXDotBadgeView.m
//  BREXBadgeView
//
//  Created by 毕博洋 on 2018/2/23.
//  Copyright © 2018年 毕博洋. All rights reserved.
//

#import "BREXDotBadgeView.h"

@implementation BREXDotBadgeView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self)
    {
        self.bounds = CGRectMake(0, 0, 8, 8);
        self.layer.cornerRadius = self.frame.size.width / 2;
        self.clipsToBounds = YES;
        self.userInteractionEnabled = YES;
        self.backgroundColor = [UIColor redColor];
        self.hidden = YES;
    }
    return self;
}

- (void)setBadgeNum:(NSInteger)badgeNum
{
    _badgeNum = badgeNum;
    if (_badgeNum <= 0)
    {
        self.hidden = YES;
    }
    else
    {
        self.hidden = NO;
    }
}

@end
