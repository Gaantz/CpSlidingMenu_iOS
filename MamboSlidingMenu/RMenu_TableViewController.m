//
//  RMenu_TableViewController.m
//  MamboSlidingMenu
//
//  Created by Cristian on 3/07/15.
//  Copyright (c) 2015 Cristian. All rights reserved.
//

#import "RMenu_TableViewController.h"
#import "SlideNavigationController.h"

@interface RMenu_TableViewController ()
{
    NSArray *opciones;
}
@end

@implementation RMenu_TableViewController


-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self.slideOutAnimationEnabled = YES;
    return [super initWithCoder:aDecoder];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    opciones = @[@"Mi Cuenta",@"Ultimos Movimientos",@"Mis Inversiones",
              @"Rentabilidad",@"Mis Documentos",@"Actualizar",
              @"Suscripciones",@"Noticias",@"Estados de Cuenta",
              @"Mi Asesor",@"Cerrar Sesion"];

    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.contentInset = UIEdgeInsetsMake(20.0f, 0.0f, 0.0f, 0.0f);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [opciones count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"
                                                            forIndexPath:indexPath];
    if(cell != nil)
    {
        cell.textLabel.text = [opciones objectAtIndex:indexPath.row];
        cell.textLabel.textColor = [UIColor grayColor];
        cell.textLabel.font = [UIFont fontWithName:@"Futura-CondensedMedium" size:22];
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *mainStoryboard =
    [UIStoryboard storyboardWithName:@"Main" bundle: nil];

    UIViewController *frame = nil;
    
    switch (indexPath.row) {
        case 0:
            frame = [mainStoryboard instantiateViewControllerWithIdentifier: @"Uno"];
            break;
        case 1:
            frame = [mainStoryboard instantiateViewControllerWithIdentifier: @"Dos"];
            break;
        case 2:
            frame = [mainStoryboard instantiateViewControllerWithIdentifier: @"Tres"];
            break;
        default:
            frame = [mainStoryboard instantiateViewControllerWithIdentifier: @"Tres"];
            break;
    }
    
    [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:frame
                                                             withSlideOutAnimation:self.slideOutAnimationEnabled
                                                                     andCompletion:nil];

    /*
    NSString *title = [opciones objectAtIndex:indexPath.row];
    [self.delegate cambiarTitulo:title];

    [[SlideNavigationController sharedInstance] closeMenuWithCompletion:nil];
     */
}

@end
