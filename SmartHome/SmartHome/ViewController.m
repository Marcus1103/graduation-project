//
//  ViewController.m
//  SmartHome
//
//  Created by Marcus on 14-4-27.
//  Copyright (c) 2014年 Marcus. All rights reserved.
//

#import "ViewController.h"
#import "IIViewDeckController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    [super loadView];
    self.view.backgroundColor = [UIColor blueColor];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self.viewDeckController action:@selector(toggleLeftView)];;
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 100, 100)];
    [button setTitle:@"test" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:button];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self.viewDeckController action:@selector(toggleLeftView)];;
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(50, 200, 100, 100)];
    [button setTitle:@"test" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
