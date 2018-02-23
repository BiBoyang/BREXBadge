//
//  BREXBadgeView.m
//  BREXBadgeView
//
//  Created by 毕博洋 on 2018/2/23.
//  Copyright © 2018年 毕博洋. All rights reserved.
//

#import "BREXBadgeView.h"
#import "BREXDotBadgeView.h"
#import "BREXNewBadgeView.h"
#import "BREXNumberBadgeView.h"
#import "UIView+DragBlast.h"

@implementation BREXBadgeView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self)
    {
        // Initialization code
    }
    return self;
}

+ (BREXBadgeView *)badgeViewForType:(BREXBadgeType)type {
    switch (type)
    {
        case NUMBER_BADGE_VIEW:
            return [[BREXNumberBadgeView alloc]init];
            break;
        case DOT_BADGE_VIEW:
            return [[BREXDotBadgeView alloc]init];
            break;
        case NEW_BADGE_VIEW:
        {
            BREXNewBadgeView *imageBadge = [[BREXNewBadgeView alloc]initWithFrame:CGRectMake(0, 0, 27, 15)];
            [imageBadge setImagePath:@"icon_new"];
            return imageBadge;
        }
            break;
        default:
            break;
    }
    return nil;
}











@end
