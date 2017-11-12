//
//  UISearchBar+LZRefresh.h
//  LZWeChatDemo
//
//  Created by liuzhao on 2017/10/26.
//  Copyright © 2017年 liuzhao. All rights reserved.
//

#import <UIKit/UIKit.h>

/** 刷新控件的状态 */
typedef NS_ENUM(NSInteger, LZRefreshState) {
    LZRefreshStateDefault = 1,     //非刷新状态，该值不能为0
    LZRefreshStateBeginRefresh,    //刷新状态
    LZRefreshStateNone             //全非状态（即不是刷新 也不是 非刷新状态）
};


@class RefreshView;
@interface UIView (LZRefresh)
// 监测范围的临界点,>0代表向上滑动多少距离,<0则是向下滑动多少距离
@property (nonatomic, assign)CGFloat threshold;

// 记录scrollView.contentInset.top
@property (nonatomic, assign)CGFloat marginTop;

//记录刷新状态
@property (nonatomic, assign)LZRefreshState refreshStatus;

//用于刷新回调
@property (nonatomic, copy)void(^refreshBlock)(void);

//刷新动画
@property (nonatomic, strong) CABasicAnimation *animation;

//偏移量累加
@property (nonatomic, assign) CGFloat offsetCollect;

//刷新view
@property (nonatomic, strong) RefreshView *refreshView;

//用于承接需要刷新的下拉刷新的extenScrollView
@property (nonatomic, strong) UIScrollView *extenScrollView;

/**
 下拉刷新
 
 @param scrollView 需要添加刷新的tableview
 @param position icon位置（默认：{10，34}navBar左上角）
 @param block 刷新回调
 */
- (void)lz_refreshWithObject:(UIScrollView *)scrollView atPoint:(CGPoint)position downRefresh:(void(^)(void))block;

/**
 结束刷新动作
 */
- (void)lz_endRefresh;

/**
 释放观察者
 */
- (void)lz_freeReFresh;

@end



@interface RefreshView : UIScrollView
//刷新view的icon
@property (nonatomic, strong)UIImageView *refreshIcon;


@end
