//
//  ZDNormailDetailViewController.m
//  218_ViewControllerTransitionsDemo
//
//  Created by 0day on 13-10-18.
//  Copyright (c) 2013年 dayzh. All rights reserved.
//

#import "ZDNormailDetailViewController.h"

@interface ZDNormailDetailViewController ()

@end

@implementation ZDNormailDetailViewController

- (id)init
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self = [storyboard instantiateViewControllerWithIdentifier:@"vc.normalDetail"];
    if (self) {
        
    }
    return self;
}

- (IBAction)backButtonPressed:(id)sender {
    if (self.presentingViewController) {
        [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    } else {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

@end
