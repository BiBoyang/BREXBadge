//
//  BREXBadgeView.h
//  BREXBadgeView
//
//  Created by 毕博洋 on 2018/2/23.
//  Copyright © 2018年 毕博洋. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, BREXBadgeType) {
    NUMBER_BADGE_VIEW,    // 正常数字显示，若超过99，显示...
    DOT_BADGE_VIEW,       // 一个小红点
    NEW_BADGE_VIEW,       // new 图标
};

@interface BREXBadgeView : UIView
{
    NSInteger _badgeNum;
}

/**
 *  badge 数字
 */
@property (nonatomic, assign) NSInteger badgeNum;

/*
 * 获取各种型号badge
 * 使用姿势：传入类型,返回一个固定大小，左上角起点 (0,0)的badgeView，ps：badgeNum=0，则隐藏
 * @param   type    badge的类型
 * @return  构造完成的badgeView
 */
+ (BREXBadgeView *)badgeViewForType:(BREXBadgeType)type;


@end
