//
//  NetWorkTools.h
//  JourneyBySelfDriving
//
//  Created by Apple on 2017/4/18.
//  Copyright © 2017年 Blessed Journey. All rights reserved.
//

#import <Foundation/Foundation.h>
/** 用来封装文件数据的模型*/
@interface UploadDataObject : NSObject
/** 文件数据*/
@property (nonatomic, strong) NSData *data;
/** 参数名*/
@property (nonatomic, copy) NSString *name;
/** 文件名*/
@property (nonatomic, copy) NSString *filename;
/** 文件类型*/
@property (nonatomic, copy) NSString *mimeType;

@end
@interface NetWorkTools : NSObject

+ (void)POSTWithURL:(NSString *)url params:(NSDictionary *)params success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;


+ (void)POSTWithURL:(NSString *)url params:(NSDictionary *)params dataArray:(NSArray<UploadDataObject *> *)dataArray success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

+ (void)GETWithURL:(NSString *)url params:(NSDictionary *)params success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

@end
