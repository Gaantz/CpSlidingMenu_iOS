//
//  UnoViewController.m
//  MamboSlidingMenu
//
//  Created by Cristian on 3/07/15.
//  Copyright (c) 2015 Cristian. All rights reserved.
//

#import "UnoViewController.h"
#import "SlideNavigationController.h"
#import "RMenu_TableViewController.h"
#import "SlideNavigationContorllerAnimatorSlide.h"

@interface UnoViewController ()

@end

@implementation UnoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initMenu];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (void)initMenu
{
    [[SlideNavigationController sharedInstance] enableSwipeGesture];
    [[SlideNavigationController sharedInstance] panGestureSideOffset];
    [SlideNavigationController sharedInstance].enableShadow = false;
    
    RMenu_TableViewController *rm =
    ((RMenu_TableViewController*)[SlideNavigationController sharedInstance].rightMenu);
    rm.delegate=self;
    
    id<SlideNavigationContorllerAnimator> revealAnimator =
    [[SlideNavigationContorllerAnimatorSlide alloc] init];
    CGFloat duration = 0.5;
    
    [[SlideNavigationController sharedInstance] closeMenuWithCompletion:^{
        [SlideNavigationController sharedInstance].menuRevealAnimationDuration = duration;
        [SlideNavigationController sharedInstance].menuRevealAnimator = revealAnimator;
    }];
    
    //[SlideNavigationController sharedInstance].rightBarButtonItem = self.btnmenu;
}

@end
