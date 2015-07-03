//
//  RMenu_TableViewController.h
//  MamboSlidingMenu
//
//  Created by Cristian on 3/07/15.
//  Copyright (c) 2015 Cristian. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol protocolo1 <NSObject>
@required
-(void)cambiarTitulo:(NSString *)titulo;
@end

@interface RMenu_TableViewController : UITableViewController

@property (nonatomic, assign) BOOL slideOutAnimationEnabled;
@property (weak) id delegate;

@end
