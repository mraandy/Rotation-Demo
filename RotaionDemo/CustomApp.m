//
//  CustomApp.m
//  RotaionDemo
//
//  Created by xa on 2020/5/3.
//  Copyright © 2020 xa. All rights reserved.
//

#import "CustomApp.h"
#import "CustomWindow.h"
#import "CustomViewController.h"


@interface CustomApp ()

@property (strong)CustomWindow *window;

@end

@implementation CustomApp

- (instancetype)init {
    if (self = [super init]) {
        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(close) name:@"exit" object:nil];
    }
    return self;
}
- (void)show {
    UIWindowScene *scence = [UIApplication sharedApplication].connectedScenes.allObjects.firstObject;
    self.window = [[CustomWindow alloc]initWithWindowScene:scence];
    CustomViewController *vc = [[CustomViewController alloc]init];;
    self.window.rootViewController = vc;
    self.window.hidden = NO;
    self.window.windowLevel = 2;
    [self.window makeKeyAndVisible];
}
- (void)close {
    self.window.hidden = YES;
    self.window = nil;
}
@end
