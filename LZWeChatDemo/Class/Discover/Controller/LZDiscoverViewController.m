//
//  LZDiscoverViewController.m
//  LZWeChatDemo
//
//  Created by liuzhao on 2017/10/26.
//  Copyright © 2017年 liuzhao. All rights reserved.
//

#import "LZDiscoverViewController.h"
#import "LZDiscoverTableViewCell.h"
#import "LZMacro.h"
#import "LZMomentsViewController.h"
@interface LZDiscoverViewController ()

@end

@implementation LZDiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStyleGrouped];
    self.tableView.tableFooterView = [UIView new];
    // tableView 偏移20/64适配
    if (@available(iOS 11.0, *)){
        self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        self.tableView.contentInset = UIEdgeInsetsMake(64, 0, 49, 0);//导航栏如果使用系统原生半透明的，top设置为64
        self.tableView.scrollIndicatorInsets = self.tableView.contentInset;
    }
    
    self.dataArray = [@[
                       @[@{@"title" : @"朋友圈",@"icon" : @"ff_IconShowAlbum"}],
                       @[@{@"title" : @"扫一扫",@"icon" : @"ff_IconQRCode"},
                         @{@"title" : @"摇一摇",@"icon" : @"ff_IconShake"}
                         ]
                       ] mutableCopy];
}




- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.dataArray.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSArray *subArray = self.dataArray[section];
    return subArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *discoverTableViewCellID = @"discoverTableViewCellID";
    LZDiscoverTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:discoverTableViewCellID];
    if (cell == nil) {
        cell = [[LZDiscoverTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:discoverTableViewCellID];
    }
    [cell setContent:self.dataArray[indexPath.section] indexPath:indexPath];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    LZMomentsViewController *momentsVC = [[LZMomentsViewController alloc] init];
    [self.navigationController pushViewController:momentsVC animated:YES];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44.0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 15.0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 15.0;
}
- (void)tableView:(UITableView *)tableView willDisplayFooterView:(UIView *)view forSection:(NSInteger)section{
    view.backgroundColor = G_MainTabViewBackgroundColor;
}
- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section{
    view.backgroundColor = G_MainTabViewBackgroundColor;

}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return [[UIView alloc] init];
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return [[UIView alloc] init];
}
@end
