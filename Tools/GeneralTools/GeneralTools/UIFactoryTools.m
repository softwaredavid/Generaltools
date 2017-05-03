//
//  UIFactoryTools.m
//  JourneyBySelfDriving
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 Blessed Journey. All rights reserved.
//

#import "UIFactoryTools.h"

@implementation UIFactoryTools
//创建带图片BarButtonItem
+ (UIBarButtonItem *)createBarButtonWithImage:(NSString *)imageName
                                     selector:(SEL)selector
                                       tagget:(id)target
{
    
    UIImage *image;
    if (imageName) {//如果有图片就创建
        
        image = [[UIImage imageNamed:imageName]
                 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] ;
    }
    
    return [[UIBarButtonItem alloc] initWithImage:image
                                            style:UIBarButtonItemStylePlain
                                           target:target
                                           action:selector];
}
//创建带标题BarButtonItem
+ (UIBarButtonItem *)createBarButtonWithTitle:(NSString *)title
                                     selector:(SEL)selector
                                       tagget:(id)target
{
    
    return [[UIBarButtonItem alloc] initWithTitle:title
                                            style:UIBarButtonItemStylePlain
                                           target:target
                                           action:selector];
}

//创建Lable
+ (UILabel *)creatLabelWithFrame:(CGRect)frame
                            text:(NSString *)text
{
    
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = text;
    label.backgroundColor = [UIColor clearColor];
    label.numberOfLines = 0;
    label.font = [UIFont systemFontOfSize:15];
    [label sizeToFit];
    
    return label;
}

//创建ImageView
+ (UIImageView *)creatImageViewWithFrame:(CGRect)frame
                               imageName:(NSString *)name
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.image  = [UIImage imageNamed:name];
    return imageView;
}

//创建按钮
+ (UIButton *)creatButtonWithFrame:(CGRect)frame
                            target:(id)target
                               sel:(SEL)sel
                               tag:(NSInteger)tag
                             image:(NSString *)name
                             title:(NSString *)title
{
    
    UIButton *button = nil;
    if (name) {
        //创建图片按钮
        //创建背景图片 按钮
        button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
        if (title) {//图片标题按钮
            [button setTitle:title forState:UIControlStateNormal];
            [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            
        }
    }else if (title) {
        //创建标题按钮
        button = [UIButton buttonWithType:UIButtonTypeSystem];
        [button setTitle:title forState:UIControlStateNormal];
    }
    button.frame = frame;
    button.tag = tag;
    [button addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    return button;
}
@end
