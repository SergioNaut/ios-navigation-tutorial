//
//  LetraBViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraBViewController.h"
#import "LetraCViewController.h"
#import <AVFoundation/AVFoundation.h>
@implementation LetraBViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    self.title = @"B";
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton
                       buttonWithType:UIButtonTypeSystem];
    [botao
     setTitle:@"Blastoise"
     forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    [botao addTarget:self action:@selector(printImage:) forControlEvents:UIControlEventAllTouchEvents];
    AVSpeechSynthesisVoice *falar = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-BR"];
    AVSpeechUtterance *frase = [[AVSpeechUtterance alloc]initWithString:@"B de Blastóise"];
    frase.rate = AVSpeechUtteranceMinimumSpeechRate;
    AVSpeechSynthesizer *speechsynt = [[AVSpeechSynthesizer alloc]init];
    [frase setVoice:falar];
    [speechsynt speakUtterance:frase];
    
    [self.view addSubview:botao];
    
}

-(void)next:(id)sender {
    LetraCViewController *proximo = [[LetraCViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}



-(void)printImage:(id)sender{
    UIImageView *imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(20, 100, 280, 192)];
    UIImage *image = [UIImage imageNamed:@"Blastoise.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
}

@end
