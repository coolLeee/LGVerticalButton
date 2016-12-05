//
//  LGVerticalButton.m
//  ThrendDemo
//
//  Created by li gang on 16/2/5.
//  Copyright (c) 2016年 li gang. All rights reserved.
//

#import "LGVerticalButton.h"

@implementation LGVerticalButton

- (void)setup
{
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    //调整按钮的边框为圆角
    self.layer.cornerRadius = 5;
    self.layer.masksToBounds = YES;
}

//通过代码继承时调用
//- (instancetype)initWithFrame:(NSRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        [self setup];
//    }
//    return self;
//}

//通过xib创建时调用
- (void)awakeFromNib
{
    [super awakeFromNib];
    [self setup];
}

- (void)layoutSubviews
{
    self.imageView.frame = CGRectMake(0, 0, self.frame.size.width-30, self.frame.size.width-30);
//    NSLog(@"%@",NSStringFromCGRect(self.imageView.frame));
    self.titleLabel.frame = CGRectMake(0, self.frame.size.width-30, self.frame.size.width, 20);
//    NSLog(@"%@",NSStringFromCGRect(self.titleLabel.frame));

    
}

@end
