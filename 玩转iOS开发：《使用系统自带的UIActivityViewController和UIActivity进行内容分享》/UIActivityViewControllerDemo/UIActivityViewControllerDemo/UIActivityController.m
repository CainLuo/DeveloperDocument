//
//  UIActivityController.m
//  UIActivityViewControllerDemo
//
//  Created by Cain on 29/6/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import "UIActivityController.h"
#import "WeiboActivity.h"

#define CAL_GET_OBJECT(objc) if (objc) return objc

@interface UIActivityController ()

@property (nonatomic, strong) WeiboActivity *weiboActivity;

@end

@implementation UIActivityController

- (instancetype)initAspActivityControllerWithContent:(NSArray *)activityContent {
    
    NSArray *activitys = @[self.weiboActivity];
    
    if (self = [super initWithActivityItems:activityContent applicationActivities:activitys]) {
        
        self.excludedActivityTypes = @[UIActivityTypePostToFacebook,
                                       UIActivityTypePostToTwitter,
                                       UIActivityTypePostToWeibo,
                                       UIActivityTypeMail,
                                       UIActivityTypePrint,
                                       UIActivityTypeCopyToPasteboard,
                                       UIActivityTypeAssignToContact,
                                       UIActivityTypeSaveToCameraRoll,
                                       UIActivityTypeAddToReadingList,
                                       UIActivityTypePostToFlickr,
                                       UIActivityTypePostToVimeo,
                                       UIActivityTypePostToTencentWeibo,
                                       UIActivityTypeAirDrop,
                                       UIActivityTypeOpenInIBooks];
    }
    
    return self;
}

- (WeiboActivity *)weiboActivity {
    
    CAL_GET_OBJECT(_weiboActivity);
    
    _weiboActivity = [[WeiboActivity alloc] init];
    
    [_weiboActivity setWeiboBlock:^{
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"新浪微博"
                                                            message:@"分享至新浪微博"
                                                           delegate:nil
                                                  cancelButtonTitle:@"好的"
                                                  otherButtonTitles:nil, nil];
        
        [alertView show];
    }];

    return _weiboActivity;
}

@end
