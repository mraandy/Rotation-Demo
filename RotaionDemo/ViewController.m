//
//  ViewController.m
//  RotaionDemo
//
//  Created by xa on 2020/5/3.
//  Copyright © 2020 xa. All rights reserved.
//

#import "ViewController.h"
#import "CustomApp.h"

@interface ViewController ()

@property(strong)CustomApp *app;

@end

@implementation ViewController

- (IBAction)showApp:(id)sender {
    [self.app show];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.app = [CustomApp new];
}


@end
