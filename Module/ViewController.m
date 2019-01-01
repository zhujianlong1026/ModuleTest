//
//  ViewController.m
//  Module
//
//  Created by 朱建龙 on 2018/9/12.
//  Copyright © 2018年 朱建龙. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>
#import "ModuleAManager.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clicked)];
    [self.view addGestureRecognizer:tap];
    
    [self.view addSubview:self.label];
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
}

- (void)clicked
{
    UIViewController *vc = [[ModuleAManager sharedInstance] moduleAStartViewController];
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - lazyInit

- (UILabel *)label
{
    if (!_label) {
        _label = [[UILabel alloc] init];
        _label.text = @"我是主工程中的页面，点击我push一个moduleA中的页面";
        _label.font = [UIFont systemFontOfSize:14];
    }
    return _label;
}

@end
