//
//  StackViewController.m
//  drawViewActions
//
//  Created by gqy on 2019/4/1.
//  Copyright © 2019年 guoqingyang. All rights reserved.
//

#import "StackViewController.h"
#import <Masonry.h>
@interface StackViewController ()

@end

@implementation StackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self drawView];
}

- (void)drawView{
    UIStackView *s = [[UIStackView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64)];
    [self.view addSubview:s];
    
    UIView *v1 = [UIView new];
    v1.backgroundColor = [UIColor redColor];
    [v1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@60);
    }];
    
    UIView *v2 = [UIView new];
    v2.backgroundColor = [UIColor greenColor];
    [v2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@60);
    }];
    
    UIView *v3 = [UIView new];
    v3.backgroundColor = [UIColor yellowColor];
    [v3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@60);
    }];
    
    UIView *v4 = [UIView new];
    v4.backgroundColor = [UIColor grayColor];
    [v4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@60);
    }];
    
    [s addArrangedSubview:v1];
    [s addArrangedSubview:v2];
    [s addArrangedSubview:v3];
    [s addArrangedSubview:v4];
    
    [s setAxis:UILayoutConstraintAxisHorizontal];                      //排列类型
    [s setDistribution:UIStackViewDistributionFillEqually];           //子控件大小一样
    [s setSpacing:20];                                                            //子控件间距
    [s setAlignment:UIStackViewAlignmentBottom];
    //添加动画
//    [UIView animateWithDuration:1.3 animations:^{
//        [s layoutIfNeeded];
//    }];
}

@end
