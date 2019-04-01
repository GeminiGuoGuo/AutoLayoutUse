//
//  RootViewController.m
//  drawViewActions
//
//  Created by gqy on 2019/3/28.
//  Copyright © 2019年 guoqingyang. All rights reserved.
//

#import "RootViewController.h"
#import <YogaKit/UIView+Yoga.h>
#import "StackViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self drawView];
    //[self drawText];
}

//介绍各个属性
- (void)drawView_2{
    /*
     flex 语法
     参考网址:http://www.ruanyifeng.com/blog/2015/07/flex-grammar.html
     Yoga是Facebook根据flex语法为iOS布局设计的一套框架
     
     1.容器的六个属性
     flex-direction 视图的排序方式
     flex-wrap 是否换行,换行方式
     flex-flow 是flex-direction属性和flex-wrap属性的简写形式，默认值为row nowrap,未在Yoga找到
     justify-content 定义了项目在主轴上的对齐方式。
     align-items 属性定义项目在交叉轴上如何对齐
     align-content 属性定义了多根轴线的对齐方式。如果项目只有一根轴线，该属性不起作用
     
     2.项目的属性
     order 属性定义项目的排列顺序。数值越小，排列越靠前，默认为0。(Yoga未发现)
     flex-grow 属性定义项目的放大比例，默认为0，即如果存在剩余空间，也不放大
     flex-shrink 属性定义了项目的缩小比例，默认为1，即如果空间不足，该项目将缩小
     flex-basis 属性定义了在分配多余空间之前，项目占据的主轴空间（main size）。浏览器根据这个属性，计算主轴是否有多余空间。它的默认值为auto，即项目的本来大小。
     flex 属性是flex-grow, flex-shrink 和 flex-basis的简写，默认值为0 1 auto。后两个属性可选(Yoga不存在)
     align-self 属性允许单个项目有与其他项目不一样的对齐方式，可覆盖align-items属性。默认值为auto，表示继承父元素的align-items属性，如果没有父元素，则等同于stretch。
     */
    
    
    UIView *v1 = [UIView new];
    v1.backgroundColor = [UIColor redColor];
    [v1 configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.flexDirection = YGFlexDirectionRow;//视图排列方式
        layout.flexWrap = YGWrapWrap;//是否换行,换行方式
        layout.justifyContent = YGJustifyFlexStart;//主轴排序方式
        layout.alignItems = YGAlignFlexStart;//交叉轴的对齐方式
        layout.alignContent = YGAlignFlexStart;//多跟轴的对齐方式
        //项目属性
        layout.flexGrow = 0;
        layout.flexShrink = 1;
        layout.flexBasis = YGValueAuto;
        layout.alignSelf = YGAlignAuto;
    }];
    [self.view addSubview:v1];
    [v1.yoga applyLayoutPreservingOrigin:NO];
}

- (void)drawView{
    [self.view configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.flexDirection = YGFlexDirectionRow;
    }];
    
    UIView *backView = [UIView new];
    backView.backgroundColor = [UIColor redColor];
    [backView configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.flexDirection = YGFlexDirectionColumn;
        layout.width = YGPointValue(self.view.frame.size.width);
        layout.marginTop = YGPointValue(64 + 100);
        layout.marginBottom = YGPointValue(100);
    }];
    
    UIView *labelBack = [UIView new];
    labelBack.backgroundColor = [UIColor greenColor];
    [labelBack configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.flexDirection = YGFlexDirectionRow;

    }];
    [backView addSubview:labelBack];

    UILabel *label1 = [UILabel new];
    label1.backgroundColor = [UIColor yellowColor];
    label1.text = @"111111111111144444444444444";
    label1.numberOfLines = 0;
    [label1 configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.height = YGPointValue(20);
        layout.marginTop = YGPointValue(10);
        layout.marginLeft = YGPointValue(10);
    }];
    [labelBack addSubview:label1];
    [backView addSubview:labelBack];
    UILabel *label2 = [UILabel new];
    label2.backgroundColor = [UIColor grayColor];
    label2.text = @"2222222222223333333333333";
    label2.numberOfLines = 0;
    [label2 configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.marginTop = YGPointValue(10);
        layout.marginRight = YGPointValue(10);
        layout.marginLeft = YGPointValue(10);
        //layout.height = YGPointValue(20);
    }];
    [labelBack addSubview:label2];
    
    
    [self.view addSubview:backView];
    [self.view.yoga applyLayoutPreservingOrigin:NO];
}

- (void)drawText{
    [self.view configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.flexDirection = YGFlexDirectionRow;
    }];
    
    UIView *back = [UIView new];
    [self.view addSubview:back];
    back.backgroundColor = [UIColor redColor];
    [back configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.marginTop = YGPointValue(64);
    }];
    
    NSString *str = @"央视新闻客户端2月1日消息，国家主席习近平1日在钓鱼台国宾馆会见来华进行正式访问的英国首相特雷莎·梅习近平首先请特雷莎·梅转达对伊丽莎白二世女王的亲切问候和良好祝愿。习近平指出，英国是最早承认新中国的西方大国。建交以来，两国各领域合作硕果累累。2015年我对英国进行了成功访问，双方共同揭开了中英关系“黄金序章”。中方愿同英方一道，推动中英关系在新时代健康稳定发展，为两国人民带来更多福祉，为世界繁荣稳定提供更多助力。";
    UILabel *textLbl = [[UILabel alloc] initWithFrame:CGRectZero];
    textLbl.backgroundColor = [UIColor yellowColor];
    textLbl.numberOfLines = 0;
    textLbl.text = str;
    [textLbl configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.paddingHorizontal = YGPointValue(8.0);
        layout.marginBottom = YGPointValue(8.0);
    }];
    [back addSubview:textLbl];
    /*
    UIView *views = [[UIView alloc] initWithFrame:CGRectZero];
    views.backgroundColor = [UIColor greenColor];
    [views configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        //padding可以有三个表示含义，与上一个控件距离还有自身的大小，宽度是左右间距为0 高度为输入数据的两倍
        layout.padding = YGPointValue(8.0);
    }];
    [back addSubview:views];
     */
    [self.view.yoga applyLayoutPreservingOrigin:NO];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.navigationController pushViewController:[StackViewController new] animated:YES];
}

@end
