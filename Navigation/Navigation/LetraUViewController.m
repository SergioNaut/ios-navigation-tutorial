//
//  LetraUViewController.m
//  Navigation
//
//  Created by Sergio Mauwad Golbert on 2/27/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraUViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "LetraVViewController.h"

@interface LetraUViewController ()

@end

@implementation LetraUViewController

- (void)viewDidLoad
{    [super viewDidLoad];
    self.title = @"U";
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton
                       buttonWithType:UIButtonTypeSystem];
    [botao
     setTitle:@"Umbreon"
     forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    [botao addTarget:self action:@selector(printImage:) forControlEvents:UIControlEventAllTouchEvents];
    AVSpeechSynthesisVoice *falar = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-BR"];
    AVSpeechUtterance *frase = [[AVSpeechUtterance alloc]initWithString:@"U de Umbreon"];
    frase.rate = AVSpeechUtteranceMinimumSpeechRate;
    AVSpeechSynthesizer *speechsynt = [[AVSpeechSynthesizer alloc]init];
    [frase setVoice:falar];
    [speechsynt speakUtterance:frase];
    
    [self.view addSubview:botao];
    
}

-(void)next:(id)sender {
    LetraVViewController *proximo = [[LetraVViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}



-(void)printImage:(id)sender{
    UIImageView *imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(20, 100, 280, 192)];
    UIImage *image = [UIImage imageNamed:@"umbreon.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
}

@end
