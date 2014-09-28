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
    
    self.view.backgroundColor = [UIColor blackColor];

    UIBarButtonItem *barButtonItemLeft = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"home.png"] style:UIBarButtonItemStyleBordered target:self.viewDeckController action:@selector(toggleLeftView)];
    
    self.navigationItem.leftBarButtonItem = barButtonItemLeft;
    
    UIBarButtonItem *barButtonItemMore = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"home_setting.png"] style:UIBarButtonItemStyleBordered target:self.viewDeckController action:@selector(toggleLeftView)];;
    
    self.navigationItem.rightBarButtonItem = barButtonItemMore;
    
    [self.roomCollectionView registerClass:[MainCollectionViewCell class] forCellWithReuseIdentifier:@"MainCollectionViewCell"];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeColor) name:@"changeRoom" object:nil];

}

#pragma mark - UICollectionViewDelegate
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *reuseIdetify = @"MainCollectionViewCell";
    MainCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdetify forIndexPath:indexPath];
    if ((indexPath.row + 3 * indexPath.section) == 0) {
        cell.imageView.image = [UIImage imageNamed:@"TV"];
    } else if ((indexPath.row + 3 * indexPath.section) == 1) {
        cell.imageView.image = [UIImage imageNamed:@"refrigerator"];
    } else if ((indexPath.row + 3 * indexPath.section) == 2) {
        cell.imageView.image = [UIImage imageNamed:@"microwaver"];
    } else if ((indexPath.row + 3 * indexPath.section) == 3) {
        cell.imageView.image = [UIImage imageNamed:@"air-condition"];
    } else if ((indexPath.row + 3 * indexPath.section) == 4) {
        cell.imageView.image = [UIImage imageNamed:@"fan"];
    } else if ((indexPath.row + 3 * indexPath.section) == 5) {
        cell.imageView.image = [UIImage imageNamed:@"bulb"];
    }
    
    cell.label.text = [NSString stringWithFormat:@""];
    cell.contentView.layer.masksToBounds = YES;
    cell.contentView.layer.cornerRadius = 20.0;
    cell.contentView.layer.borderWidth = 5.0;
    cell.contentView.layer.borderColor = [UIColor colorWithRed:11/255.0f green:96/255.0f blue:254/255.0f alpha:0.9].CGColor;
//    cell.backgroundColor = [UIColor yellowColor];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [UIView animateWithDuration:1.0 animations:^{
        self.view.backgroundColor = [UIColor colorWithRed:11/255.0f green:96/255.0f blue:254/255.0f alpha:1];
    }];
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
    CGSize size = CGSizeMake(90, 90);
    return size;
}

// 定义section的边距
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(10, 10, 0, 10);
}

- (void)changeColor {
    srandom(time(0));
    int i = random() % 255;
    int j = random() % 255;
    [UIView animateWithDuration:1.0 animations:^{
        self.view.backgroundColor = [UIColor colorWithRed:11/255.0f green:j/255.0f blue:i/255.0f alpha:1];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
