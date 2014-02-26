//
//  LetraDViewController.m
//  Navigation
//
//  Created by Sergio Mauwad Golbert on 2/26/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraDViewController.h"

@interface LetraDViewController ()

@end

@implementation LetraDViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    self.title = @"D";
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton
                       buttonWithType:UIButtonTypeSystem];
    [botao
     setTitle:@"Dragonite"
     forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    [botao addTarget:self action:@selector(printImage:) forControlEvents:UIControlEventAllTouchEvents];
    [self.view addSubview:botao];
    
}

-(void)next:(id)sender {
    LetraDViewController *proximo = [[LetraDViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}



-(void)printImage:(id)sender{
    UIImageView *imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(20, 100, 280, 192)];
    UIImage *image = [UIImage imageNamed:@"Dragonite.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
}

@end
