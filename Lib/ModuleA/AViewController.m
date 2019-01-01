//
//  AViewController.m
//  Pods
//
//  Created by 朱建龙 on 2018/12/29.
//

#import "AViewController.h"
#import <Masonry/Masonry.h>
#import "CTMediator+ModuleBAction.h"


@interface AViewController ()

@property (nonatomic, strong) UILabel *label;

@property (nonatomic, strong) UILabel *resultLabel;

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.redColor;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clicked)];
    [self.view addGestureRecognizer:tap];
    
    [self.view addSubview:self.label];
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
    
    [self.view addSubview:self.resultLabel];
    [self.resultLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.view.mas_centerY).multipliedBy(3.0/4);
    }];
}

- (void)clicked
{
    NSString *phone = [[CTMediator sharedInstance] CTMediator_UserMobilePhone];
    
    self.resultLabel.text = [NSString stringWithFormat:@"ModuleB中拿到的数据->%@", phone];
}

#pragma mark - lazyInit

- (UILabel *)label
{
    if (!_label) {
        _label = [[UILabel alloc] init];
        _label.text = @"ModuleA中的页面，点击我去取ModuleB中的数据";
        _label.font = [UIFont systemFontOfSize:14];
    }
    return _label;
}

- (UILabel *)resultLabel
{
    if (!_resultLabel) {
        _resultLabel = [[UILabel alloc] init];
        _resultLabel.font = [UIFont systemFontOfSize:14];
        _resultLabel.textColor = UIColor.blueColor;
    }
    return _resultLabel;
}

@end
