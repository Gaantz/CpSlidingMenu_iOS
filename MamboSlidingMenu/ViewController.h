//
//  ViewController.h
//  MamboSlidingMenu
//
//  Created by Cristian on 3/07/15.
//  Copyright (c) 2015 Cristian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"

@interface ViewController : UIViewController <SlideNavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *btnmenu;
@property (nonatomic, strong) IBOutlet UILabel *titulo;

@end

