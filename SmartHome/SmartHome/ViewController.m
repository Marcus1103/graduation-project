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
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self.viewDeckController action:@selector(toggleLeftView)];

    UIBarButtonItem *barButtonItemLeft = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"home_nav_leftButton.png"] style:UIBarButtonItemStyleBordered target:self.viewDeckController action:@selector(toggleLeftView)];
    
    self.navigationItem.leftBarButtonItem = barButtonItemLeft;
    
    UIBarButtonItem *barButtonItemMore = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"home_setting.png"] style:UIBarButtonItemStyleBordered target:self.viewDeckController action:@selector(toggleLeftView)];;
    
    self.navigationItem.rightBarButtonItem = barButtonItemMore;
}

#pragma mark - UICollectionViewDelegate
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [[UICollectionViewCell alloc]init];
    return cell;
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 3;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
