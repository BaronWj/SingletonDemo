//
//  testSingleton.h
//  SingletonDemo
//
//  Created by 潘伟杰 on 16/7/13.
//  Copyright © 2016年 潘伟杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface testSingleton : NSObject
@property (assign, nonatomic)   int  height;
@property (strong, nonatomic)   NSObject  *object;
@property (strong, nonatomic)   NSMutableArray  *arrayM;
+ (instancetype)sharedInstance;
@end
