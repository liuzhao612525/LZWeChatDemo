//
//  AppDelegate.h
//  LZWeChatDemo
//
//  Created by liuzhao on 2017/10/14.
//  Copyright © 2017年 liuzhao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

