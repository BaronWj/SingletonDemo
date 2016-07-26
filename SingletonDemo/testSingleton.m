//
//  testSingleton.m
//  SingletonDemo
//
//  Created by 潘伟杰 on 16/7/13.
//  Copyright © 2016年 潘伟杰. All rights reserved.
//

#import "testSingleton.h"


@implementation testSingleton

////////////////////////////////////////////
//方法一
/////////////////////////////////////////////


//static testSingleton *instance = nil;
//+ (instancetype)sharedInstance
//{
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        instance = [[[self class] alloc] init];
//    });
//    return instance;
//}
//
//+ (instancetype)allocWithZone:(struct _NSZone *)zone
//{
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        instance = [super allocWithZone:zone];
//    });
//    return instance;
//}

//方法二

static testSingleton *instance = nil;
+ (instancetype)sharedInstance
{
    return [[self alloc] init];
}

- (instancetype)init
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [super init];
        instance.height = 10;
        instance.object = [[NSObject alloc] init];
        instance.arrayM = [[NSMutableArray alloc] init];
    });
    return instance;
}
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [super allocWithZone:zone];
    });
    return instance;
}
- (NSString *)description
{
    NSString *result = @"";
    result = [result stringByAppendingFormat:@"<%@: %p>",[self class], self];
    result = [result stringByAppendingFormat:@" height = %d,",self.height];
    result = [result stringByAppendingFormat:@" arrayM = %p,",self.arrayM];
    result = [result stringByAppendingFormat:@" object = %p,",self.object];
    return result;
}

@end
