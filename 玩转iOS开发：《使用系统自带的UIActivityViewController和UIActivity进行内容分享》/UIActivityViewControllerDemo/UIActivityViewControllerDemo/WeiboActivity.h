//
//  WeiboActivity.h
//  UIActivityViewControllerDemo
//
//  Created by Cain on 29/6/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeiboActivity : UIActivity

@property (nonatomic, copy) void(^weiboBlock)(void);

@end
