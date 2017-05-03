//
//  UIColor+Exention.m
//  GeneralTools
//
//  Created by Apple on 2017/4/24.
//  Copyright © 2017年 EdisonDu. All rights reserved.
//


#import "UIColor+Exention.h"

@implementation UIColor (Exention)

+ (UIColor *)colorWithNumber:(NSUInteger)colorNum
{
    return [UIColor colorWithRed:
            ((float)((colorNum & 0xFF0000) >> 16))/255.0
                           green:
            ((float)((colorNum & 0xFF00) >> 8))/255.0
                            blue:
            ((float)(colorNum & 0xFF))/255.0 alpha:1.0];
}
+ (UIColor *)colorWithString:(NSString *)colorString
{
    //去除空格
    NSString *cString = [[colorString stringByTrimmingCharactersInSet:
                          [NSCharacterSet whitespaceAndNewlineCharacterSet]]
                                    uppercaseString];
    
    
    if ([cString hasPrefix:@"#"]) {
        //以#开头
        cString = [cString substringFromIndex:1];
        
    } else if ([cString hasPrefix:@"0x"]) {
        //以0x开头
         cString = [cString substringFromIndex:2];
        
    }
    
    if ([cString length] != 6) {
        
        return [UIColor clearColor];
    }
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    //从字符串中取出r、g、b的值
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:1.0f];

}

@end
