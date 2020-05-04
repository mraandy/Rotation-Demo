//
//  CustomWindow.m
//  RotaionDemo
//
//  Created by xa on 2020/5/3.
//  Copyright © 2020 xa. All rights reserved.
//

#import "CustomWindow.h"

@implementation CustomWindow

- (void)exit {
    [NSNotificationCenter.defaultCenter postNotificationName:@"exit" object:nil];
}
@end
