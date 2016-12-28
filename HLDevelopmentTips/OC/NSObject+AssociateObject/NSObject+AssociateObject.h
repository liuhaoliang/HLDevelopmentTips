//
//  NSObject+AssociateObject.h
//  WheelTech
//
//  Created by 韶创 on 2015/3/20.
//  Copyright (c) 2015年 韶创. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (AssociateObject)

@property (nonatomic, strong) id object;

- (void)setObject:(id)object forKey:(id<NSCopying>)key;
- (id)objectForKey:(id<NSCopying>)key;
- (void)removeObjectForKey:(id<NSCopying>)key;

@end
