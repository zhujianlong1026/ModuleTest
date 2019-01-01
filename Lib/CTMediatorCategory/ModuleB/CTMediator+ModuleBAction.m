//
//  CTMediator+ModuleBAction.m
//  CTMediator
//
//  Created by 朱建龙 on 2018/12/29.
//

#import "CTMediator+ModuleBAction.h"

NSString * const kCTMediatorTargetB = @"ModuleB";

NSString * const kCTMediatorActionUserMobilePhone = @"UserMobilePhone";


@implementation CTMediator (ModuleBAction)

- (NSString *)CTMediator_UserMobilePhone
{
    NSString *phone = [self performTarget:kCTMediatorTargetB action:kCTMediatorActionUserMobilePhone params:nil shouldCacheTarget:NO];
    return phone;
}

@end
