//
//  BREXNumberBadgeView.m
//  BREXBadgeView
//
//  Created by 毕博洋 on 2018/2/23.
//  Copyright © 2018年 毕博洋. All rights reserved.
//

#import "BREXNumberBadgeView.h"
#import "UIView+DragBlast.h"

#define NUMBER_BADGE_HEIGHT   17.0f

@interface BREXNumberBadgeView ()

@property (nonatomic,strong) UILabel *badgeLabel;

@end

@implementation BREXNumberBadgeView


- (id)initWithFrame:(CGRect)frame
{
    return [self initWithBackgroundColor:[UIColor redColor] fontColor:[UIColor whiteColor]];
}

- (id)initWithBackgroundColor:(UIColor *)backgroundColor fontColor:(UIColor *)fontColor
{
    self = [super initWithFrame:CGRectMake(0, 0, NUMBER_BADGE_HEIGHT, NUMBER_BADGE_HEIGHT)];
    if (self)
    {
        self.backgroundColor = backgroundColor;
        self.badgeLabel = [[UILabel alloc] initWithFrame:self.bounds];
        self.badgeLabel.backgroundColor = [UIColor clearColor];
        self.badgeLabel.textAlignment = NSTextAlignmentCenter;
        self.badgeLabel.textColor = fontColor;
        self.badgeLabel.font = [UIFont systemFontOfSize:13.f];
        self.layer.cornerRadius = self.frame.size.height / 2;
        self.clipsToBounds = YES;
        self.userInteractionEnabled = YES;
        self.hidden = YES;
        self.tapBlast = YES;
        self.dragBlast = YES;
        [self addSubview: self.badgeLabel];
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
        if (_badgeNum > 99)
        {
            self.badgeLabel.text = @"•••";
        }
        else
        {
            self.badgeLabel.text = [NSString stringWithFormat:@"%ld",(long)_badgeNum];
        }
        self.hidden = NO;
        CGPoint center = self.center;
        if (_badgeNum < 10)
        {
            CGRect temp = self.frame;
            temp.size.width = NUMBER_BADGE_HEIGHT;
            self.frame = temp;
        }
        else//变长
        {
            CGRect temp = self.frame;
            temp.size.width = 25.f;
            self.frame = temp;
            //注意，这里不能使用self.frame.size.width = 25.f; 原因在https://segmentfault.com/q/1010000000177216
        }
        self.badgeLabel.frame = self.bounds;
        self.center = center;
    }
}


@end
