//
//  LZTabBarViewController.m
//  LZWeChatDemo
//
//  Created by liuzhao on 2017/10/15.
//  Copyright © 2017年 liuzhao. All rights reserved.
//

#import "LZTabBarViewController.h"
#import "LZMacro.h"
#import "LZNavViewController.h"
#import "LZDiscoverViewController.h"
#import "LZChatsTableViewController.h"
@interface LZTabBarViewController ()

@end

@implementation LZTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *childItemsArray = @[
                                 @{kClassKey  : @"LZChatsTableViewController",
                                   kTitleKey  : @"微信",
                                   kNorImgKey    : @"tabbar_mainframe",
                                   kSelImgKey : @"tabbar_mainframeHL"},
                                 
                                 @{kClassKey  : @"LZContactsTableViewController",
                                   kTitleKey  : @"通讯录",
                                   kNorImgKey    : @"tabbar_contacts",
                                   kSelImgKey : @"tabbar_contactsHL"},
                                 
                                 @{kClassKey  : @"LZDiscoverViewController",
                                   kTitleKey  : @"发现",
                                   kNorImgKey    : @"tabbar_discover",
                                   kSelImgKey : @"tabbar_discoverHL"},
                                 
                                 @{kClassKey  : @"LZMeTableViewController",
                                   kTitleKey  : @"我",
                                   kNorImgKey    : @"tabbar_me",
                                   kSelImgKey : @"tabbar_meHL"} ];
    
    __weak typeof(self) weakSelf = self;
    
    [childItemsArray enumerateObjectsUsingBlock:^(NSDictionary *dict, NSUInteger idx, BOOL *stop) {
        [weakSelf addChildVc:dict[kClassKey] title:dict[kTitleKey] image:dict[kNorImgKey] selectedImage:dict[kSelImgKey]];
        
    }];
}

/**
 *  添加一个子控制器
 *
 *  @param childVcName       子控制器
 *  @param title         标题
 *  @param image         图片
 *  @param selectedImage 选中的图片
 */
- (void)addChildVc:(NSString *)childVcName title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    UIViewController *childVc = [NSClassFromString(childVcName) new];
    childVc.title = title;
    
    // 设置子控制器的图片
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 设置文字的样式
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = G_TintSelColor;
    [childVc.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
    
    LZNavViewController *nav = [[LZNavViewController alloc] initWithRootViewController:childVc];
    [self addChildViewController:nav];
    
}
@end
