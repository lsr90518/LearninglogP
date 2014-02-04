//
//  AllLogListViewController.h
//  LearninglogP
//
//  Created by Lsr on 1/30/14.
//  Copyright (c) 2014 Lsr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AllLogListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *itemArray;
}
@property (weak, nonatomic) IBOutlet UILabel *titleLable;
@property (weak, nonatomic) IBOutlet UITableView *dataTable;
@property (weak, nonatomic) IBOutlet UIButton *cameraButton;


@end
