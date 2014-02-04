//
//  AddItemViewController.m
//  LearninglogP
//
//  Created by Lsr on 2/3/14.
//  Copyright (c) 2014 Lsr. All rights reserved.
//

#import "AddItemViewController.h"
#import "AllLogListViewController.h"

@interface AddItemViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation AddItemViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSURL *url=[NSURL URLWithString:@"http://ll.is.tokushima-u.ac.jp/learninglog/item/add"];
    NSURLRequest *request=[[NSURLRequest alloc] initWithURL:url];
    NSString *body = @"laadeedaa";
    
    // Dump the response to the UIWebView
    [self.webView loadRequest:request];
}
- (IBAction)goBackAll:(id)sender {
    AllLogListViewController *alvc = [[AllLogListViewController alloc]init];
    alvc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:alvc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
