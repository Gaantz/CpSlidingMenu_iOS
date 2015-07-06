//
//  BaseViewController.h
//  MamboSlidingMenu
//
//  Created by Cristian on 6/07/15.
//  Copyright (c) 2015 Cristian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RMenu_TableViewController.h"
#import "SlideNavigationController.h"
#import "SlideNavigationContorllerAnimatorSlide.h"

@interface BaseViewController : UIViewController <SlideNavigationControllerDelegate>

-(void)initMenu;

@end
