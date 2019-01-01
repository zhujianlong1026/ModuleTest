//
//  ModuleAManager.m
//  ModuleA
//
//  Created by 朱建龙 on 2018/12/29.
//

#import "ModuleAManager.h"
#import "AViewController.h"

@implementation ModuleAManager

+ (instancetype)sharedInstance
{
    static ModuleAManager *module;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        module = [[ModuleAManager alloc] init];
    });
    return module;
}

- (UIViewController *)moduleAStartViewController
{
    return [[AViewController alloc] init];
}

@end
