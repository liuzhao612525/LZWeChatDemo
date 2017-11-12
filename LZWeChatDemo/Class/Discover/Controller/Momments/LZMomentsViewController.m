//
//  LZMomentsViewController.m
//  LZWeChatDemo
//
//  Created by liuzhao on 2017/10/26.
//  Copyright © 2017年 liuzhao. All rights reserved.
//

#import "LZMomentsViewController.h"
#import "LZMommentsHeaderView.h"
#import "LZMacro.h"
#import "LZMomentsHeaderRefresh.h"
#import "UIView+LZRefresh.h"
@interface LZMomentsViewController ()<UITableViewDelegate ,UITableViewDataSource>
{}
@property (strong, nonatomic) UITableView *tabView;
@end

@implementation LZMomentsViewController
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"朋友圈";
    self.tabView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tabView.backgroundColor = RGB(80, 80, 80);
    self.tabView.tableHeaderView = [[LZMommentsHeaderView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 300)];
//    self.tabView.tableHeaderView.layer.zPosition = -1;
    [self.view addSubview:self.tabView];
    [self.view lz_refreshWithObject:self.tabView atPoint:CGPointZero downRefresh:^{
        //开始刷新
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            //2 秒后结束刷新
            [self.view lz_endRefresh];
        });
    }];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    return cell;
}

@end
