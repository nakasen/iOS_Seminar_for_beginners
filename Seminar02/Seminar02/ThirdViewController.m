//
//  ThirdViewController.m
//  Seminar02
//
//  Created by 中川 聡 on 2013/05/25.
//  Copyright (c) 2013年 nakasen.com. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
    
    UILabel *questionLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 115, 261, 80)];
    questionLabel.font = [UIFont fontWithName:@"Helvetica" size:24];
    questionLabel.textAlignment = NSTextAlignmentCenter;
    questionLabel.backgroundColor = [UIColor clearColor];
    questionLabel.lineBreakMode = NSLineBreakByCharWrapping;
    questionLabel.numberOfLines = 0;
    questionLabel.text = @"ショッピング？\nそれとも絶景？";
    [self.view addSubview:questionLabel];
    
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    leftButton.frame = CGRectMake(30, 256, 115, 44);
    leftButton.titleLabel.font = [UIFont boldSystemFontOfSize:15.0f];
    [leftButton setTitle:@"ショッピング" forState:UIControlStateNormal];
    [leftButton addTarget:self action:@selector(leftAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:leftButton];
    
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    rightButton.frame = CGRectMake(176, 256, 115, 44);
    rightButton.titleLabel.font = [UIFont boldSystemFontOfSize:15.0f];
    [rightButton setTitle:@"絶景" forState:UIControlStateNormal];
    [rightButton addTarget:self action:@selector(rightAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:rightButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
