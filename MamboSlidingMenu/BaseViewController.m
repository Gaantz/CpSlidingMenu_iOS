//
//  BaseViewController.m
//  MamboSlidingMenu
//
//  Created by Cristian on 6/07/15.
//  Copyright (c) 2015 Cristian. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.grayColor;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

- (BOOL)slideNavigationControllerShouldDisplayRightMenu
{
    return YES;
}

-(void)initMenu
{
    /**
     *
     * Habilita el reconocimiento de Gesto para abrir el menu al deslizar de Derecha a Izquierda.
     * Quita la Sombra entre el Menu y el Current Controller.
     *
    **/
     
    [[SlideNavigationController sharedInstance] enableSwipeGesture];
    [[SlideNavigationController sharedInstance] panGestureSideOffset];
    [SlideNavigationController sharedInstance].enableShadow = false;
    
    /**
     *
     * Referencia el MenuController (*RMenu_TableViewController) de
     * NavigationController(SlideNavigationController) para establecerlo 
     * como menu de Izquierda.
     * Se habilita la propiedad de animacion.
     * Se referencia la clase personalizada de animación.
     * Se establece la duracion de la Animacion.
     *
     **/
    
    RMenu_TableViewController *rm =
    ((RMenu_TableViewController*)[SlideNavigationController sharedInstance].rightMenu);
    [rm slideOutAnimationEnabled];
    id<SlideNavigationContorllerAnimator> revealAnimator =
    [[SlideNavigationContorllerAnimatorSlide alloc] init];
    CGFloat duration = 0.25;
    
    /**
     *
     * Se activa el callback que llamara a la animacion y establecera 
     * la duracion y animacion que ya se referencio.
     *
     **/
    
    [[SlideNavigationController sharedInstance] closeMenuWithCompletion:^{
        [SlideNavigationController sharedInstance].menuRevealAnimationDuration = duration;
        [SlideNavigationController sharedInstance].menuRevealAnimator = revealAnimator;
    }];
    
    /**
     *
     * Quita el boton de atras por defecto que se crea cuando se cambia de ViewControllers
     *
     **/
     
    [self.navigationItem setHidesBackButton:YES];
    
    
    UIBarButtonItem *rightButton =
    [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"ic_dehaze.png"]
                                     style:UIBarButtonItemStyleDone
                                    target:self
                                    action:nil];
    [SlideNavigationController sharedInstance].rightBarButtonItem = rightButton;
}

@end
