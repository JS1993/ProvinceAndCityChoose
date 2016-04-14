//
//  City.m
//  省市联动
//
//  Created by  江苏 on 16/4/14.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "City.h"

@implementation City
-(instancetype)initWithDict:(NSDictionary*)dict{
    self=[super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
+(instancetype)cityWithDict:(NSDictionary*)dict{
    return [[self alloc]initWithDict:dict];
}
+(NSArray*)citys{
    NSMutableArray* arrM=[NSMutableArray array];
    NSArray* arr=[NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"provinces" ofType:@"plist"]];
    for (NSDictionary* dic in arr ) {
        [arrM addObject:[self cityWithDict:dic]];
    }
    return arrM;
}

@end
