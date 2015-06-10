//
//  QXBtnIcon.h
//  QXIconButtonDemo
//
//  Created by QinXin on 15/5/31.
//  Copyright (c) 2015年 labi3285_Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QXBtnIcon : UIControl

+ (instancetype)iconWithIcon:(UIImage *)icon title:(NSString *)title;
- (instancetype)initWithIcon:(UIImage *)icon title:(NSString *)title;

@end
