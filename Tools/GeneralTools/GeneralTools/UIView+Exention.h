//
//  UIView+Exention.h
//  GeneralTools
//
//  Created by Apple on 2017/4/24.
//  Copyright © 2017年 EdisonDu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Exention)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, readonly) CGFloat maxY;
@property (nonatomic, readonly) CGFloat maxX;

@property (nonatomic, readonly) CGFloat screenWidth;
@property (nonatomic, readonly) CGFloat screenHeight;


- (void)addSubviews:(NSArray *)views;
- (UIViewController*)viewController;
@end
