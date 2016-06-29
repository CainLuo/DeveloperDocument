//
//  WeiboActivity.m
//  UIActivityViewControllerDemo
//
//  Created by Cain on 29/6/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import "WeiboActivity.h"

@implementation WeiboActivity

- (NSString *)activityType {
    
    return @"CustomWeiboActivity";
}

- (NSString *)activityTitle {
    
    return @"新浪微博";
}

- (UIImage *)_activityImage {
    
    return [UIImage imageNamed:@"ShareBundle.bundle/share_icon_1"];
}

- (void)performActivity {
    [self activityDidFinish:YES];
    
    if (self.weiboBlock) {
        self.weiboBlock();
    }
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems {
    
    if (activityItems.count > 0) {
        
        return YES;
    }
    
    return NO;
}

@end
