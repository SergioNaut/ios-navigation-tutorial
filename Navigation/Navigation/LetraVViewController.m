//
//  LetraVViewController.m
//  Navigation
//
//  Created by Sergio Mauwad Golbert on 2/27/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraVViewController.h"
#import "LetraWViewController.h"
#import <AVFoundation/AVFoundation.h>
@interface LetraVViewController ()

@end

@implementation LetraVViewController

- (void)viewDidLoad
{    [super viewDidLoad];
    self.title = @"V";
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton
                       buttonWithType:UIButtonTypeSystem];
    [botao
     setTitle:@"Vaporeon"
     forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    [botao addTarget:self action:@selector(printImage:) forControlEvents:UIControlEventAllTouchEvents];
    AVSpeechSynthesisVoice *falar = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-BR"];
    AVSpeechUtterance *frase = [[AVSpeechUtterance alloc]initWithString:@"V de Vapóreon"];
    frase.rate = AVSpeechUtteranceMinimumSpeechRate;
    AVSpeechSynthesizer *speechsynt = [[AVSpeechSynthesizer alloc]init];
    [frase setVoice:falar];
    [speechsynt speakUtterance:frase];
    
    [self.view addSubview:botao];
    
}

-(void)next:(id)sender {
    LetraWViewController *proximo = [[LetraWViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}



-(void)printImage:(id)sender{
    UIImageView *imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(20, 100, 280, 192)];
    UIImage *image = [UIImage imageNamed:@"vaporeon.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
}

@end
