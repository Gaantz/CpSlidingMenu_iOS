//
//  ViewController.m
//  MamboSlidingMenu
//
//  Created by Cristian on 3/07/15.
//  Copyright (c) 2015 Cristian. All rights reserved.
//

#import "ViewController.h"
#import "RMenu_TableViewController.h"
#import "SlideNavigationContorllerAnimatorSlide.h"

@interface ViewController ()<protocolo1>
@property(nonatomic,weak) NSString *mitulo;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initMenu];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(BOOL)slideNavigationControllerShouldDisplayLeftMenu
{
    return false;
}

- (BOOL)slideNavigationControllerShouldDisplayRightMenu
{
    return true;
}

-(void)cambiarTitulo:(NSString *)titulo
{
    self.titulo.text = titulo;
    self.navigationItem.title = titulo;
}

- (void)initMenu
{
    [[SlideNavigationController sharedInstance] enableSwipeGesture];
    [[SlideNavigationController sharedInstance] panGestureSideOffset];
    [SlideNavigationController sharedInstance].enableShadow = false;
    
    RMenu_TableViewController *rm =
    ((RMenu_TableViewController*)[SlideNavigationController sharedInstance].rightMenu);
    [rm slideOutAnimationEnabled];
    rm.delegate=self;
    
    id<SlideNavigationContorllerAnimator> revealAnimator =
    [[SlideNavigationContorllerAnimatorSlide alloc] init];
    CGFloat duration = 0.5;
    
    [[SlideNavigationController sharedInstance] closeMenuWithCompletion:^{
        [SlideNavigationController sharedInstance].menuRevealAnimationDuration = duration;
        [SlideNavigationController sharedInstance].menuRevealAnimator = revealAnimator;
    }];
    
    [SlideNavigationController sharedInstance].rightBarButtonItem = self.btnmenu;
}

@end
