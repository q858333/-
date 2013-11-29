//
//  DBViewController.m
//  XuanZhuan
//
//  Created by Leo on 13-11-29.
//  Copyright (c) 2013年 DengBin. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController ()

@end

@implementation DBViewController

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
   // self.view.backgroundColor=[UIColor redColor];
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(0, 0, 200, 200);
    btn.backgroundColor=[UIColor redColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btn) forControlEvents:UIControlEventTouchUpInside];
    
	// Do any additional setup after loading the view.
}
-(void)btn
{
    [self dismissViewControllerAnimated:YES completion:^{}];

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}
- (NSUInteger)supportedInterfaceOrientations {
    //    CGRect bounds = self.view.bounds;
    
    return UIInterfaceOrientationMaskPortrait;
}
@end
