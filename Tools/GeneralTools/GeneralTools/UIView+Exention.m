//
//  UIView+Exention.m
//  GeneralTools
//
//  Created by Apple on 2017/4/24.
//  Copyright © 2017年 EdisonDu. All rights reserved.
//

#import "UIView+Exention.h"

@implementation UIView (Exention)
- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;

}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (CGFloat)screenWidth
{

    return [UIScreen mainScreen].bounds.size.width;
}
- (CGFloat)maxX
{

    return CGRectGetMaxX(self.frame);
    
}
- (CGFloat)maxY
{

    return CGRectGetMaxY(self.frame);
}

- (CGFloat)screenHeight
{
    return [UIScreen mainScreen].bounds.size.height;
}

- (void)addSubviews:(NSArray *)views
{
    for (UIView *v in views) {
        
        [self addSubview:v];
        
    }
}
- (UIViewController*)viewController {
    
    for (UIView *next = [self superview]; next; next = next.superview) {
        
        UIResponder *nextResponder = [next nextResponder];
        
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            
            return (UIViewController*)nextResponder;
            
        }
    }
    return nil;
}
@end
