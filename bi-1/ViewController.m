//
//  ViewController.m
//  bi-1
//
//  Created by Jakub Hladík on 23.09.13.
//  Copyright (c) 2013 FlowKnight s.r.o. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) UILabel *titleLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIColor *color = [UIColor whiteColor];
    self.view.backgroundColor = color;
    
    UILabel *titleLabel = [[UILabel alloc] init];
    CGRect titleLabelRect = CGRectMake(8,
                                       8 + 20,
                                       CGRectGetWidth(self.view.bounds) - 2*8,
                                       44);
    titleLabel.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.4];
    titleLabel.frame = titleLabelRect;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.text = @"ahoj, iOS";
    [self.view addSubview:titleLabel];
    
    self.titleLabel = titleLabel;
    
    UIImageView *imageView = [[UIImageView alloc] init];
    titleLabelRect.origin.y += 44 + 8;
    titleLabelRect.size.height = 120;
    imageView.frame = titleLabelRect;
    imageView.clipsToBounds = YES;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.image = [UIImage imageNamed:@"img1"];
    [self.view addSubview:imageView];
    
    UIButton *button = [[UIButton alloc] init];
    button.frame = CGRectMake(8, 200, CGRectGetWidth(self.view.bounds) - 2*8, 44);
    [button setTitle:@"Tap me!" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    [button addTarget:self
               action:@selector(buttonAction:)
     forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (void)buttonAction:(UIButton *)sender
{
    self.titleLabel.text = @"button tapped";
}

@end
