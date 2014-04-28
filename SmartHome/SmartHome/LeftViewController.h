//
//  LeftViewController.h
//  SmartHome
//
//  Created by Marcus on 14-4-28.
//  Copyright (c) 2014年 Marcus. All rights reserved.
//

#import "ViewController.h"

@interface LeftViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *roomTableView;

@end
