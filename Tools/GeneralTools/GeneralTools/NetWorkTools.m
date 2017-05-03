//
//  NetWorkTools.m
//  JourneyBySelfDriving
//
//  Created by Apple on 2017/4/18.
//  Copyright © 2017年 Blessed Journey. All rights reserved.
//

#import "NetWorkTools.h"
#import "AFNetworking.h"
@implementation NetWorkTools
+ (void)POSTWithURL:(NSString *)url params:(NSDictionary *)params success:(void (^)(id))success failure:(void (^)(NSError *))failure {
    
    AFHTTPSessionManager *manager = [self getManager];
    
    [manager POST:url
       parameters:params
         progress:nil
          success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject)
     {!success ? : success(responseObject);}
          failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error)
     {!failure ? : failure(error);}];
}

+ (void)POSTWithURL:(NSString *)url params:(NSDictionary *)params dataArray:(NSArray<UploadDataObject *> *)dataArray success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure {
    // 1.创建请求管理对象
    AFHTTPSessionManager *manager = [self getManager];
    
    [manager POST:url
       parameters:params
constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        for (UploadDataObject *data in dataArray) {
            [formData appendPartWithFileData:data.data name:data.name fileName:data.filename mimeType:data.mimeType];
            }
    }
         progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {!success ? : success(responseObject);}
          failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) { !failure ? : failure(error);}];
    
}
+ (void)GETWithURL:(NSString *)url params:(NSDictionary *)params success:(void (^)(id responseObject))success failure:(void (^)(NSError *))failure {
    
    AFHTTPSessionManager *manager = [self getManager];
    
    [manager GET:url
      parameters:params
        progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject)
     {!success ? : success(responseObject);}
         failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error)
     {!failure ? : failure(error);
     }];
}

+ (AFHTTPSessionManager *)getManager {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    manager.securityPolicy.allowInvalidCertificates = YES;
    manager.securityPolicy.validatesDomainName = NO;
   /*
    [manager.requestSerializer
     setAuthorizationHeaderFieldWithUsername:AUTHORIZE_USERNAME password:AUTHORIZE_PASSWORD];
    
    [manager.requestSerializer
     setValue:[UserDefaults objectForKey:KEY_ACCESS_TOKEN] forHTTPHeaderField:@"Authorization"];
    
    NSString *userToken = [UserDefaults objectForKey:USER_TOKEN];
    
    if (userToken && userToken.length != 0) {
        [manager.requestSerializer setValue:userToken forHTTPHeaderField:@"X-WDLT-TOKEN"];
    }
    */
    return manager;
}
@end

@implementation UploadDataObject
@end
