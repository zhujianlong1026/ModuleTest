//
//  Target_ModuleA.m
//  ModuleB
//
//  Created by 朱建龙 on 2018/12/29.
//

#import "Target_ModuleA.h"
#import "ModuleAManager.h"


@implementation Target_ModuleA

- (UIViewController *)Action_AViewController:(NSDictionary *)params
{
    return [[ModuleAManager sharedInstance] moduleAStartViewController];
}

@end
