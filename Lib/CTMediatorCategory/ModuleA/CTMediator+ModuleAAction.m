//
//  CTMediator+ModuleAAction.m
//  CTMediator
//
//  Created by 朱建龙 on 2018/12/29.
//

#import "CTMediator+ModuleAAction.h"

NSString * const kCTMediatorTargetA = @"ModuleA";

NSString * const kCTMediatorActionAViewController = @"AViewController";



@implementation CTMediator (ModuleAAction)

- (UIViewController *)CTMediator_AViewController
{
    UIViewController *viewController = [self performTarget:kCTMediatorTargetA action:kCTMediatorActionAViewController params:nil shouldCacheTarget:NO];
    
    return viewController;
}

@end
