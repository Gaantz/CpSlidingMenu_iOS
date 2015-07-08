//
//  MainViewController.m
//  MamboSlidingMenu
//
//  Created by Cristian on 8/07/15.
//  Copyright (c) 2015 Cristian. All rights reserved.
//

#import "MainViewController.h"

@implementation MainViewController


-(void)viewDidLoad
{
    [super viewDidLoad];
}

- (BOOL)slideNavigationControllerShouldDisplayRightMenu
{
    return NO;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    [[self navigationController] setTitle:@""];
}


//- (void)viewWillLayoutSubviews
//{
//    [self.navigationController setNavigationBarHidden:YES];
//
//}

@end
