//
//  NSObject+AssociateObject.m
//  WheelTech
//
//  Created by 韶创 on 2015/3/20.
//  Copyright (c) 2015年 韶创. All rights reserved.
//

#import "NSObject+AssociateObject.h"

#import <objc/runtime.h>

static void *ResultKey = "SCAssociateObject.ResultKey";
static void *DictKey = "SCAssociateObject.DictKey";

@implementation NSObject (AssociateObject)

- (void)setObject:(id)object {
    objc_setAssociatedObject(self, &ResultKey, object, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)object {
    return objc_getAssociatedObject(self, &ResultKey);
}

- (void)setObject:(id)object forKey:(id<NSCopying>)key {
    NSMutableDictionary *dict;
    if ((dict = objc_getAssociatedObject(self, &DictKey))) {
        dict[key] = object;
    } else {
        dict = [NSMutableDictionary dictionaryWithObject:object forKey:key];
        objc_setAssociatedObject(self, &DictKey, dict, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

- (id)objectForKey:(id<NSCopying>)key {
    return objc_getAssociatedObject(self, &DictKey)[key];
}

- (void)removeObjectForKey:(id<NSCopying>)key {
    NSMutableDictionary *dict = objc_getAssociatedObject(self, &DictKey);
    [dict removeObjectForKey:key];
}

@end
