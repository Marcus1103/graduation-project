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

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self.viewDeckController action:@selector(toggleLeftView)];
    UIButton *btnMore = nil;
    btnMore = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 20, 44)];
//    btnMore.backgroundColor = kColor_NavigationBar;
    [btnMore setImage:[UIImage imageNamed:@"menu_more.png"] forState:UIControlStateNormal];
//    [btnMore addTarget:self action:@selector(buttonHighlight:) forControlEvents:UIControlEventTouchDown];
//    [btnMore addTarget:self action:@selector(buttonTouchUpOutside:) forControlEvents:UIControlEventTouchUpOutside];
//    [btnMore addTarget:self action:@selector(btnMoreAction:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *barButtonItemMore = [[UIBarButtonItem alloc] initWithCustomView:btnMore];
    
    self.navigationItem.rightBarButtonItem = barButtonItemMore;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
