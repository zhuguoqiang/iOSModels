//
//  DeviceInfo.h
//  ZGQDeviceDemo
//
//  Created by zhuguoqiang on 19/03/11.
//  Copyright © 2019年 zhuguoqiang All rights reserved.
//

#import <Foundation/Foundation.h>
@interface DeviceInfo : NSObject

@property(nonatomic,copy) NSString* model;  //机型

+ (instancetype)device;

@end
