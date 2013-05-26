//
//  FirstViewController.m
//  Seminar02
//
//  Created by 中川 聡 on 2013/05/25.
//  Copyright (c) 2013年 nakasen.com. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
        // initメソッド内でself.viewを呼び出してはならない。
        self.navigationItem.title = @"行き先は？";
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
    questionLabel.text = @"あなたは国内旅行派？\nそれとも海外旅行派？";
    [self.view addSubview:questionLabel];
    
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    leftButton.frame = CGRectMake(30, 256, 115, 44);
    leftButton.titleLabel.font = [UIFont boldSystemFontOfSize:15.0f];
    [leftButton setTitle:@"国内" forState:UIControlStateNormal];
    [leftButton addTarget:self action:@selector(leftAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:leftButton];
    
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    rightButton.frame = CGRectMake(176, 256, 115, 44);
    rightButton.titleLabel.font = [UIFont boldSystemFontOfSize:15.0f];
    [rightButton setTitle:@"海外" forState:UIControlStateNormal];
    [rightButton addTarget:self action:@selector(rightAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:rightButton];
}

- (void)leftAction:(UIButton *)button
{
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondViewController animated:YES];
}

- (void)rightAction:(UIButton *)button
{
    ThirdViewController *thirdViewController = [[ThirdViewController alloc] init];
    [self.navigationController pushViewController:thirdViewController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
