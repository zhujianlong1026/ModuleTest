//
//  ModuleAManager.h
//  ModuleA
//
//  Created by 朱建龙 on 2018/12/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ModuleAManager : NSObject

+ (instancetype)sharedInstance;

- (UIViewController *)moduleAStartViewController;

@end

NS_ASSUME_NONNULL_END
