//
//  LZMacro.h
//  LZWeChatDemo
//
//  Created by liuzhao on 2017/10/15.
//  Copyright © 2017年 liuzhao. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kClassKey   @"rootVCClassString"
#define kTitleKey   @"title"
#define kNorImgKey     @"normalImageName"
#define kSelImgKey  @"selectedImageName"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

/*全局颜色*/
#define RGB(r, g, b) [UIColor colorWithRed:(r / 255.0) green:(g / 255.0) blue:(b / 255.0) alpha:1.0]
#define RGBA(r, g, b, a) [UIColor colorWithRed:(r / 255.0) green:(g / 255.0) blue:(b / 255.0) alpha:a]

#define G_TintNorColor RGB(0 , 190 , 12)
#define G_TintSelColor RGB(0 , 190 , 12)

#define G_MainTabSseparatorColor RGB(225 , 224 , 227)
#define G_MainTabViewBackgroundColor RGB(240 , 239 , 245)
#define G_MainBackgroundColor RGB(240 , 239 , 245)

#define G_TimeLineCellHighlightedColor RGB(92 , 140 , 193)

