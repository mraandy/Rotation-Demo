//
//  CustomViewController.m
//  RotaionDemo
//
//  Created by xa on 2020/5/3.
//  Copyright © 2020 xa. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomViewController ()

@property (weak,nonatomic)UIButton *button;

@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view.
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 200, 100)];
    [self.view addSubview:button];
    [button setTitle:@"close window" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor blueColor];
    [button addTarget:self.view.window action:@selector(exit) forControlEvents:UIControlEventTouchUpInside];
    self.button = button;
}
- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.button.center = self.view.center;
}
- (BOOL)shouldAutorotate {
    return YES;
}
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
   return UIInterfaceOrientationMaskLandscapeLeft;
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationLandscapeLeft;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
