//
//  ViewController.m
//  UIActivityViewControllerDemo
//
//  Created by Cain on 29/6/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import "ViewController.h"
#import "UIActivityController.h"

@interface ViewController ()

@property (nonatomic, strong) UIActivityController *activityController;

@end

@implementation ViewController

- (IBAction)popActivityController:(UIButton *)sender {
    
    [self presentViewController:self.activityController animated:YES completion:nil];
}

- (UIActivityController *)activityController {
    
    NSString *shareTitle = @"分享的标题";
    UIImage *shareImage = [UIImage imageNamed:@"ShareBundle.bundle/share_icon_1"];
    
    if (!_activityController) {
        
        _activityController = [[UIActivityController alloc] initAspActivityControllerWithContent:@[shareTitle, shareImage]];
    }
    
    return _activityController;
}

@end
