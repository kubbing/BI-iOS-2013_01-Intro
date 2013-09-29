//
//  ViewController.m
//  bi-ios1
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
    
    UILabel *label = [[UILabel alloc] init];
    CGRect rect = CGRectMake(8, 8+20, CGRectGetWidth(self.view.bounds) - 2*8, 44);
    label.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.2];
    label.frame = rect;
    label.text = @"Ahoj, co znamena BI?";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    self.titleLabel = label;
    
    UIImageView *imageView = [[UIImageView alloc] init];
    rect.origin.y += 8 + 44;
    rect.size.height = 200;
    imageView.frame = rect;
    UIImage *image = [UIImage imageNamed:@"img1"];
    imageView.image = image;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:imageView];
    
    UIButton *button = [[UIButton alloc] init];
    rect.origin.y = 300;
    rect.size.height = 44;
    button.frame = rect;
    [button setTitle:@"Tap me, gogo!"
            forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor]
                 forState:UIControlStateNormal];
    [button setTitleColor:[UIColor yellowColor]
                 forState:UIControlStateHighlighted];
    
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

- (void)buttonAction:(UIButton *)button
{
    self.titleLabel.text = @"tapped";
}

@end
