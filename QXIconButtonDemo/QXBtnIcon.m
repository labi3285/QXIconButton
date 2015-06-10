//
//  QXBtnIcon.m
//  QXIconButtonDemo
//
//  Created by QinXin on 15/5/31.
//  Copyright (c) 2015年 labi3285_Lab. All rights reserved.
//

#import "QXBtnIcon.h"

@interface QXBtnIcon ()

@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) UIImage *icon;
@property (nonatomic, copy) NSString *title;

@end

@implementation QXBtnIcon

+ (instancetype)iconWithIcon:(UIImage *)icon title:(NSString *)title {
    return [[self alloc] initWithIcon:icon title:title];
}

- (instancetype)initWithIcon:(UIImage *)icon title:(NSString *)title {
    CGRect fixedRect = CGRectMake(0, 0, 70, 90);
    if (self = [super initWithFrame:fixedRect]) {
        self.icon = icon;
        self.title = title;
    }
    return self;
}

- (void)setIcon:(UIImage *)icon {
    _icon = icon;
    self.iconImageView.image = icon;
}

- (void)setTitle:(NSString *)title {
    _title = title;
    self.titleLabel.text = title;
}

- (void)setFrame:(CGRect)frame {
    
    CGRect reSizedFrame = CGRectMake(frame.origin.x,
                                      frame.origin.y,
                                      frame.size.width,
                                      frame.size.width / 7 * 9);
    CGFloat fontSize = frame.size.width / 70 * 14;
    self.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    
    [super setFrame:reSizedFrame];
}

- (UIImageView *)iconImageView {
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc] init];
        [self addSubview:_iconImageView];
    }
    return _iconImageView;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont systemFontOfSize:14];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_titleLabel];
    }
    return _titleLabel;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    const CGFloat magin = 5.0;
    const CGFloat mainW = self.frame.size.width;
    const CGFloat mainH = self.frame.size.height;
    
    self.iconImageView.frame = CGRectMake(magin,
                                          magin,
                                          mainW - magin * 2,
                                          mainW - magin * 2);
    self.titleLabel.frame = CGRectMake(0,
                                       CGRectGetMaxY(self.iconImageView.frame),
                                       mainW,
                                       mainH - CGRectGetMaxY(self.iconImageView.frame));
}


@end
