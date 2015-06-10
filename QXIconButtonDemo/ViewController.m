//
//  ViewController.m
//  QXIconButtonDemo
//
//  Created by QinXin on 15/5/31.
//  Copyright (c) 2015年 labi3285_Lab. All rights reserved.
//

#import "ViewController.h"
#import "QXBtnIcon.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建方式（有默认frame）
    QXBtnIcon *icon = [QXBtnIcon iconWithIcon:[UIImage imageNamed:@"icon_00"] title:@"天天跑酷"];
    [self.view addSubview:icon];
    
    // frame的调整（长宽比锁定）
    icon.frame = CGRectMake(100, 100, 200, 200);
    
    // 可添加点击事件
    [icon addTarget:self action:@selector(iconClicked) forControlEvents:UIControlEventTouchUpInside];
}

- (void)iconClicked {
    NSLog(@"I am clicked!");
}


@end
