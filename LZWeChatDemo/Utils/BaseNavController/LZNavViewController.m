//
//  LZNavViewController.m
//  LZWeChatDemo
//
//  Created by liuzhao on 2017/10/15.
//  Copyright © 2017年 liuzhao. All rights reserved.
//

#import "LZNavViewController.h"
#import "LZMacro.h"
#define NAVIGATION_HEIGHT (CGRectGetHeight([[UIApplication sharedApplication] statusBarFrame]) + CGRectGetHeight(self.navigationController.navigationBar.frame))
@interface LZNavViewController ()

@end

@implementation LZNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationBar.frame = CGRectMake(0, 0,kScreenWidth, NAVIGATION_HEIGHT);
#ifdef __IPHONE_11_0
    
    if (@available(iOS 11.0, *)) {
        
        self.navigationBar.frame = CGRectMake(0, 20,kScreenWidth, NAVIGATION_HEIGHT);
        
    }
    
#endif
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
