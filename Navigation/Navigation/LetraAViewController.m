//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraAViewController.h"
#import "LetraBViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "LetraZViewController.h"

@implementation LetraAViewController


-(void) viewDidLoad {
    [super viewDidLoad];
    self.title = @"A";
    
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    
    UIButton *botao = [UIButton
                                        buttonWithType:UIButtonTypeSystem];
    [botao
     setTitle:@"Ampharos"
     forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    
    [botao addTarget:self action:@selector(printImage:) forControlEvents:UIControlEventAllTouchEvents];
    
    AVSpeechSynthesisVoice *falar = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-BR"];
    AVSpeechUtterance *frase = [[AVSpeechUtterance alloc]initWithString:@"A de Anfaros"];
    frase.rate = AVSpeechUtteranceMinimumSpeechRate;
    AVSpeechSynthesizer *speechsynt = [[AVSpeechSynthesizer alloc]init];
    [frase setVoice:falar];
    [speechsynt speakUtterance:frase];
    
    
    
    [self.view addSubview:botao];
    
    
 
}

-(void)next:(id)sender {
    LetraBViewController *proximo = [[LetraBViewController alloc]
                                              initWithNibName:nil
                                            bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}


-(void)printImage:(id)sender{
    UIImageView *imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(20, 100, 280, 192)];
    UIImage *image = [UIImage imageNamed:@"Ampharos.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
}


@end
