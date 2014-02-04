//
//  LoginViewController.m
//  LearninglogP
//
//  Created by Lsr on 1/30/14.
//  Copyright (c) 2014 Lsr. All rights reserved.
//

#import "LoginViewController.h"
#import "AllLogListViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)Login:(id)sender {
    AllLogListViewController *allLogListViewController = [[AllLogListViewController alloc]init];
    allLogListViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:allLogListViewController animated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
