//
//  AppHelperTools.h
//  JourneyBySelfDriving
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 Blessed Journey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface AppHelperTools : NSObject

//拨打电话
+ (void)callPhoneWithPhone:(NSString *)phoneText;

+ (CGSize)caculatorSizeWithText:(NSString *)text fontSize:(CGFloat)fontSize;

@end
