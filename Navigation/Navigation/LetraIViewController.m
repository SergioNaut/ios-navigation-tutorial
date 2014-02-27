//
//  LetraIViewController.m
//  Navigation
//
//  Created by Sergio Mauwad Golbert on 2/27/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraIViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "LetraJViewController.h"
@interface LetraIViewController ()

@end

@implementation LetraIViewController

- (void)viewDidLoad
{    [super viewDidLoad];
    self.title = @"I";
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton
                       buttonWithType:UIButtonTypeSystem];
    [botao
     setTitle:@"Illumise"
     forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    [botao addTarget:self action:@selector(printImage:) forControlEvents:UIControlEventAllTouchEvents];
    AVSpeechSynthesisVoice *falar = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-BR"];
    AVSpeechUtterance *frase = [[AVSpeechUtterance alloc]initWithString:@"I de Ilumize"];
    frase.rate = AVSpeechUtteranceMinimumSpeechRate;
    AVSpeechSynthesizer *speechsynt = [[AVSpeechSynthesizer alloc]init];
    [frase setVoice:falar];
    [speechsynt speakUtterance:frase];
    
    [self.view addSubview:botao];
    
}

-(void)next:(id)sender {
    LetraJViewController *proximo = [[LetraJViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}



-(void)printImage:(id)sender{
    UIImageView *imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(20, 100, 280, 192)];
    UIImage *image = [UIImage imageNamed:@"illumise.png"];
    imageHolder.image = image;
    [self.view addSubview:imageHolder];
    
}

@end