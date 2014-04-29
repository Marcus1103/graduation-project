//
//  ViewController.m
//  SmartHome
//
//  Created by Marcus on 14-4-27.
//  Copyright (c) 2014年 Marcus. All rights reserved.
//

#import "ViewController.h"
#import "IIViewDeckController.h"
#import "MainCollectionViewCell.h"

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
    
    [self.roomCollectionView registerClass:[MainCollectionViewCell class] forCellWithReuseIdentifier:@"MainCollectionViewCell"];

}

#pragma mark - UICollectionViewDelegate
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *reuseIdetify = @"MainCollectionViewCell";
    MainCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdetify forIndexPath:indexPath];

    cell.imageView.image = [UIImage imageNamed:@"home_setting.png"];
    cell.label.text = [NSString stringWithFormat:@"%d",indexPath.row];
    cell.backgroundColor = [UIColor yellowColor];
    return cell;
}

#pragma mark - UICollectionViewDataSource
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 3;
}
                
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 3;
}

#pragma mark - UICollectionViewDelegateFlowLayout
// 定义cell的size
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGSize size = CGSizeMake(100, 50);
    return size;
}

// 定义section的边距
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(10, 0, 0, 0);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
