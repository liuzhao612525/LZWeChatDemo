//
//  LZDiscoverTableViewCell.m
//  LZWeChatDemo
//
//  Created by liuzhao on 2017/10/15.
//  Copyright © 2017年 liuzhao. All rights reserved.
//

#import "LZDiscoverTableViewCell.h"
#import "LZMacro.h"

#define kPadding 15
#define kIconImgW 25
#define kMidPadding 8
@interface LZDiscoverTableViewCell ()
{
    UIImageView *iconImgView;
    UIImageView *arrowImgView;
    UILabel *titleLabel;
}
@end
@implementation LZDiscoverTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setup];
    }
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return self;
}
- (void)setup{
    iconImgView = [[UIImageView alloc] init];
    iconImgView.contentMode  = UIViewContentModeScaleAspectFit;
    [self.contentView addSubview:iconImgView];
    
    titleLabel = [[UILabel alloc] init];
    titleLabel.font = [UIFont systemFontOfSize:17.0];
    [self addSubview:titleLabel];

}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    iconImgView.bounds = CGRectMake(0, 0, kIconImgW, kIconImgW);
    iconImgView.center = CGPointMake(kIconImgW/2 + kPadding, self.bounds.size.height/2);
    
    titleLabel.frame = CGRectMake(CGRectGetMaxX(iconImgView.frame) + kMidPadding, 0, self.contentView.bounds.size.width - kPadding*2 - kMidPadding, self.bounds.size.height);
}

- (void)setContent:(id)content indexPath:(NSIndexPath *)indexPath{
    NSArray *secArray = (NSArray *)content;
    NSDictionary *rowDict = secArray[indexPath.row];
    iconImgView.image = [UIImage imageNamed:rowDict[@"icon"]];
    titleLabel.text = rowDict[@"title"];
}
@end
