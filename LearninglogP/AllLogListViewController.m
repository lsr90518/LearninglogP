//
//  AllLogListViewController.m
//  LearninglogP
//
//  Created by Lsr on 1/30/14.
//  Copyright (c) 2014 Lsr. All rights reserved.
//

#import "AllLogListViewController.h"
#import "AddItemViewController.h"
#import "LogCell.h"

@interface AllLogListViewController ()

@end

@implementation AllLogListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)AddLogWithCamera:(id)sender {
    AddItemViewController *alvc = [[AddItemViewController alloc]init];
    alvc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:alvc animated:YES completion:nil];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    itemArray = [[NSMutableArray alloc]init];
    for(int i = 0;i<20;i++){
        NSString *username = [NSString stringWithFormat:@"00%d",i];
        [itemArray addObject:username];
    }
}



#pragma mark - UITableView methods
/**
 1、返回 UITableView 的区段数
 */
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

/**
 2、返回 UITableView 的行数
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [itemArray count];
}

/**
 3、设置行的高度
 */
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 140.0;
}

/**
 4、返回指定的 row 的 cell
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"LogCell";
    
    LogCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
    
    cell = (LogCell*)[nibArray objectAtIndex:0];
    
    
    if (cell == nil) {
        cell = [[LogCell alloc]init];
        
    }
    cell.usernameLabel.text = [itemArray objectAtIndex:indexPath.row];
    
    return cell;

}

/**
 5、点击单元格时的处理
 */
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
