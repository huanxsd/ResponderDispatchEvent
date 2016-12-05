//
//  UIResponder+BDAddition.m
//  BDKit
//
//  Created by Suteki on 2016/10/12.
//  Copyright © 2016年 Baidu. All rights reserved.
//

#import "UIResponder+BDAddition.h"

@implementation UIResponder (BDAddition)

- (void)dispatchEventWithName:(NSString *)eventName userInfo:(id)userInfo {
    [self.nextResponder handelEventWithName:eventName userInfo:userInfo];
}

- (void)handelEventWithName:(NSString *)eventName userInfo:(id)userInfo {
    BOOL shouldDispatchToNextResponder = [self responderDidReceiveEvent:eventName userInfo:userInfo];
    if (shouldDispatchToNextResponder) {
        [self.nextResponder handelEventWithName:eventName userInfo:userInfo];
    }
}

- (BOOL)responderDidReceiveEvent:(NSString *)eventName userInfo:(id)userInfo {
    return YES;
}

@end
