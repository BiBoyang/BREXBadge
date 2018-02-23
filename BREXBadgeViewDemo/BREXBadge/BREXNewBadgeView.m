//
//  BREXNewBadgeView.m
//  BREXBadgeView
//
//  Created by 毕博洋 on 2018/2/23.
//  Copyright © 2018年 毕博洋. All rights reserved.
//

#import "BREXNewBadgeView.h"
#import "UIView+DragBlast.h"

@interface BREXNewBadgeView ()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation BREXNewBadgeView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self)
    {
        self.imageView = [[UIImageView alloc]initWithFrame:self.bounds];
        self.imageView.userInteractionEnabled = YES;
        [self addSubview:self.imageView];
        self.clipsToBounds = YES;
        self.userInteractionEnabled = YES;
        self.hidden = YES;
        self.tapBlast = YES;
        self.dragBlast = NO;
    }
    return self;
}

-(void)setFrame:(CGRect)frame {
    [super setFrame:frame];
    self.imageView.frame = self.bounds;
}

- (void)setBadgeNum:(NSInteger)badgeNum {
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

-(void)setImagePath:(NSString *)path {
    self.imageView.image = [UIImage imageNamed:path];
}







@end
