//
//  ViewController.m
//  RotaionDemo
//
//  Created by xa on 2020/5/3.
//  Copyright © 2020 xa. All rights reserved.
//

#import "ViewController.h"
#import "CustomApp.h"
#import "CustomWindow.h"

@interface ViewController ()

@property(strong,nonatomic)CustomApp *app;
@property(strong,nonatomic)UIViewController *tempVc;

@end

@implementation ViewController

- (IBAction)showApp:(id)sender {
    
    UIViewController *vc = [[UIViewController alloc]init];
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    self.tempVc = vc;
    [self presentViewController:vc animated:NO completion:^{
        [self.app show];
    }];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.app = [CustomApp new];
    self.title = @"abc";
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(windowHide:) name:UIWindowDidBecomeHiddenNotification object:nil];
}
- (void)windowHide:(NSNotification *)note {
    if (self.tempVc && [note.object isKindOfClass:CustomWindow.class]) {
        [self dismissViewControllerAnimated:NO completion:nil];
        self.tempVc = nil;
    }
}
@end
