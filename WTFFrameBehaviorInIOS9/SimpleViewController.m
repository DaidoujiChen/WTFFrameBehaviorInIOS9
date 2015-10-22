//
//  SimpleViewController.m
//  WTFFrameBehaviorInIOS9
//
//  Created by DaidoujiChen on 2015/10/22.
//  Copyright © 2015年 DaidoujiChen. All rights reserved.
//

#import "SimpleViewController.h"

@implementation SimpleViewController

#pragma mark - IBAction

- (IBAction)pushAction:(id)sender {
    [self.navigationController pushViewController:[SimpleViewController new] animated:YES];
}

#pragma mark - life cycle

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"%@ viewWillAppear self.view.frame : %@", self, NSStringFromCGRect(self.view.frame));
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"%@ viewDidAppear self.view.frame : %@\n\n\n", self, NSStringFromCGRect(self.view.frame));
}

@end
