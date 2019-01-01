//
//  ModuleBManager.m
//  ModuleB
//
//  Created by 朱建龙 on 2018/12/29.
//

#import "ModuleBManager.h"

@implementation ModuleBManager

+ (instancetype)sharedInstance
{
    static ModuleBManager *module;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        module = [[ModuleBManager alloc] init];
    });
    return module;
}

@end
