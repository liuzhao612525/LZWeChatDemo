//
//  LZMomentsHeaderRefresh.m
//  LZWeChatDemo
//
//  Created by liuzhao on 2017/10/26.
//  Copyright © 2017年 liuzhao. All rights reserved.
//

#import "LZMomentsHeaderRefresh.h"
#import "UIView+Utils.h"
@interface LZMomentsHeaderRefresh ()
{
    UIImageView *imgView;
    CGFloat pullingPercents;
    CGFloat imgViewY;
}
@end
@implementation LZMomentsHeaderRefresh

- (void)prepare{
    [super prepare];
    self.mj_h = 50.0;
    imgView = [[UIImageView alloc] init];
    imgView.frame = CGRectMake(20, 10, 30, 30);
    imgView.image = [UIImage imageNamed:@"AlbumReflashIcon"];
    imgView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:imgView];
    
    pullingPercents = 0.0;
    
}
- (void)placeSubviews{
    [super placeSubviews];
    
    
}
#pragma mark 监听scrollView的contentOffset改变
- (void)scrollViewContentOffsetDidChange:(NSDictionary *)change
{
    [super scrollViewContentOffsetDidChange:change];
//    NSLog(@"%@" ,change);
//    NSDictionary *piontDict = change[@"new"];
//    CGFloat  = nsp
    
//    if (change[@""] >= 1) {
//        NSLog(@"%f %f" ,imgView.frame.origin.y ,imgViewY);
//        imgView.top = (-pullingPercent + 1) * 50  + 10;
//        
//    }
    
}

#pragma mark 监听scrollView的contentSize改变
- (void)scrollViewContentSizeDidChange:(NSDictionary *)change
{
    [super scrollViewContentSizeDidChange:change];
    
}

#pragma mark 监听scrollView的拖拽状态改变
- (void)scrollViewPanStateDidChange:(NSDictionary *)change
{
    [super scrollViewPanStateDidChange:change];
    
}

#pragma mark 监听控件的刷新状态
- (void)setState:(MJRefreshState)state
{
    MJRefreshCheckState;
    
    switch (state) {
        case MJRefreshStateIdle:
            //赶紧下拉吖
            break;
        case MJRefreshStatePulling:
            //赶紧放开我吧
            
            break;
        case MJRefreshStateRefreshing:
            //加载数据中
            
            break;
        default:
            break;
    }
}

#pragma mark 监听拖拽比例（控件被拖出来的比例）
- (void)setPullingPercent:(CGFloat)pullingPercent
{
    [super setPullingPercent:pullingPercent];
    
    pullingPercent = pullingPercent > 1? 1:pullingPercent;
    CGAffineTransform transform = CGAffineTransformIdentity;
    transform = CGAffineTransformRotate(transform, pullingPercent*M_PI);
    imgView.transform = transform;
    
    
}
@end
