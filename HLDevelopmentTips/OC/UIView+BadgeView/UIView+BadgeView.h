//
//  UIView+BadgeView.h
//  badgeViewTest
//
//  Created by QYoung on 16/1/1.
//  Copyright © 2016年 mruncle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (BadgeView)
- (UIView *)showBadgeValue:(NSString *)strBadgeValue;
- (void)removeBadgeValue;
@end
