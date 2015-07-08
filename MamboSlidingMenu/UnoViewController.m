//
//  UnoViewController.m
//  MamboSlidingMenu
//
//  Created by Cristian on 3/07/15.
//  Copyright (c) 2015 Cristian. All rights reserved.
//

#import "UnoViewController.h"

@interface UnoViewController ()

@end

@implementation UnoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initMenu];
    [self.navigationItem setHidesBackButton:NO];
    

}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    [[self navigationController] setNavigationBarHidden:NO animated:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
