//
//  AppHelperTools.m
//  JourneyBySelfDriving
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 Blessed Journey. All rights reserved.
//

#import "AppHelperTools.h"
#import <UIKit/UIKit.h>

@implementation AppHelperTools

+ (void)callPhoneWithPhone:(NSString *)phoneText

{
    UIWebView *callWebview = [[UIWebView alloc] init];
    
    NSString *str = [NSString stringWithFormat:@"tel:%@",phoneText];
    
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:str]];
    
    [callWebview loadRequest:urlRequest];
    
    [[UIApplication sharedApplication].keyWindow addSubview:callWebview];
    
}
+ (CGSize)caculatorSizeWithText:(NSString *)text fontSize:(CGFloat)fontSize {
    
    CGSize size = [text boundingRectWithSize:CGSizeMake(MAXFLOAT,MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fontSize] } context:nil].size;
    return size;
}

@end
