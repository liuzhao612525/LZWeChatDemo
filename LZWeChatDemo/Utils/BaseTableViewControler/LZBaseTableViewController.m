//
//  LZBaseTableViewController.m
//  LZWeChatDemo
//
//  Created by liuzhao on 2017/10/15.
//  Copyright © 2017年 liuzhao. All rights reserved.
//

#import "LZBaseTableViewController.h"
#import "LZMacro.h"
@interface LZBaseTableViewController ()

@end

@implementation LZBaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.tableFooterView = [UIView new];
    self.tableView.backgroundColor = G_MainTabViewBackgroundColor;
    self.tableView.separatorColor = G_MainTabSseparatorColor;

}


- (NSMutableArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
    }
    return _dataArray;
}

@end
