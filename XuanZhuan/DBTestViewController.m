//
//  DBTestViewController.m
//  XuanZhuan
//
//  Created by Leo on 13-11-29.
//  Copyright (c) 2013年 DengBin. All rights reserved.
//

#import "DBTestViewController.h"
#import "DBViewController.h"
@interface DBTestViewController ()

@end

@implementation DBTestViewController

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
    
    UIView *vi=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    
   // vi.backgroundColor=[UIColor redColor];
    vi.userInteractionEnabled=YES;
    [self.view addSubview:vi];

 vi.transform=CGAffineTransformRotate(vi.transform,90*3.14/180);

//    UIRotationGestureRecognizer *rotateRecognizer = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(handleRotate:)];
//    [vi addGestureRecognizer:rotateRecognizer];
//    
    
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:self action:@selector(btn) forControlEvents:UIControlEventTouchUpInside];
    [vi addSubview:btn];
    btn.frame=CGRectMake(0, 0, 10,100);
    btn.backgroundColor=[UIColor redColor];
    
    
    
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onDeviceOrientationChange) name:
//     UIDeviceOrientationDidChangeNotification object:nil];
//
    
	// Do any additional setup after loading the view.
}
-(void)btn
{
    DBViewController *v=[[DBViewController alloc]init];
    [self presentViewController:v animated:YES completion:^{}];

}
//- (void) handleRotate:(UIRotationGestureRecognizer*) recognizer
//{
//        recognizer.view.transform = CGAffineTransformRotate(recognizer.view.transform, recognizer.rotation);
//        recognizer.rotation = 0;
//}
//- (BOOL)shouldAutorotate
//{
//    return YES;
//}
- (NSUInteger)supportedInterfaceOrientations
{
    //    CGRect bounds = self.view.bounds;
    
    return UIInterfaceOrientationMaskLandscape;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
