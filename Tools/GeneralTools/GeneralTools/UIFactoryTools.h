//
//  UIFactoryTools.h
//  JourneyBySelfDriving
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 Blessed Journey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface UIFactoryTools : NSObject

//创建带图片UIBarButtonItem
+ (UIBarButtonItem *)createBarButtonWithImage:(NSString *)imageName
                                     selector:(SEL)secector
                                       tagget:(id)target;
//创建带标题UIBarButtonItem
+ (UIBarButtonItem *)createBarButtonWithTitle:(NSString *)title
                                     selector:(SEL)secector
                                       tagget:(id)target;
//创建Lable
+ (UILabel *)creatLabelWithFrame:(CGRect)frame
                            text:(NSString *)text;
//创建imageView
+ (UIImageView *)creatImageViewWithFrame:(CGRect)frame
                               imageName:(NSString *)name;
//创建按钮
+ (UIButton *)creatButtonWithFrame:(CGRect)frame
                            target:(id)target
                               sel:(SEL)sel
                               tag:(NSInteger)tag
                             image:(NSString *)name
                             title:(NSString *)title;
@end
