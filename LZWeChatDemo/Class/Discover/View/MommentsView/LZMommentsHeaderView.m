//
//  LZCommentsHeaderView.m
//  LZWeChatDemo
//
//  Created by liuzhao on 2017/10/15.
//  Copyright © 2017年 liuzhao. All rights reserved.
//

#import "LZMommentsHeaderView.h"
#import "LZMacro.h"
#define avatierImgViewW 70
#define padding 15
#define avaPadding 10
#define topPadding 60
@interface LZMommentsHeaderView ()
{
    UIImageView *bgImgView;
    UIImageView *bgBottomImgView;
    UIImageView *avatierImgView;
    UILabel *userNameLabel;
}
@end
@implementation LZMommentsHeaderView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    bgImgView = [UIImageView new];
    bgImgView.image = [UIImage imageNamed:@"pbg.jpg"];
    [self addSubview:bgImgView];
    
    //半阴影图片
//    bgBottomImgView = [UIImageView new];
//    bgBottomImgView.image = [UIImage imageNamed:@"pbg.jpg"];
//    [self addSubview:bgBottomImgView];
    
    avatierImgView = [UIImageView new];
    avatierImgView.image = [UIImage imageNamed:@"picon.jpg"];
    avatierImgView.layer.borderColor = [UIColor whiteColor].CGColor;
    avatierImgView.layer.borderWidth = 3;
    [self addSubview:avatierImgView];
    
    userNameLabel = [UILabel new];
    userNameLabel.text = @"LZ_FuYun";
    userNameLabel.textColor = [UIColor whiteColor];
    userNameLabel.textAlignment = NSTextAlignmentRight;
    userNameLabel.font = [UIFont boldSystemFontOfSize:15];
    [self addSubview:userNameLabel];
    
}

- (void)layoutSubviews{
    [super layoutSubviews];
    bgImgView.frame = CGRectMake(0, -topPadding, kScreenWidth, self.bounds.size.height - 30+topPadding);
    avatierImgView.frame = CGRectMake(self.bounds.size.width - padding - avatierImgViewW, self.bounds.size.height - avaPadding - avatierImgViewW, avatierImgViewW, avatierImgViewW);
    userNameLabel.frame = CGRectMake(0, CGRectGetMaxY(avatierImgView.frame) - 50, self.bounds.size.width - avatierImgViewW - 2*padding, 20);
}


@end
