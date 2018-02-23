//
//  BREXNumberBadgeView.h
//  BREXBadgeView
//
//  Created by 毕博洋 on 2018/2/23.
//  Copyright © 2018年 毕博洋. All rights reserved.
//

#import "BREXBadgeView.h"

@interface BREXNumberBadgeView : BREXBadgeView

/**
 *  创建一个数字样式的 badgeview，大小已经固定
 *
 *  @param backgroundColor 背景色
 *  @param fontColor       字体颜色
 *
 *  @return badgeview
 */
- (id)initWithBackgroundColor:(UIColor *)backgroundColor fontColor:(UIColor *)fontColor;

@end
