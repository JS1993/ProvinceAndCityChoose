//
//  City.h
//  省市联动
//
//  Created by  江苏 on 16/4/14.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject
@property(copy,nonatomic)NSString* name;
@property(strong,nonatomic)NSArray* cities;

+(NSArray*)citys;
@end
