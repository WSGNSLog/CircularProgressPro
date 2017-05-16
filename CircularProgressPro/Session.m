//
//  Session.m
//  CircularProgressPro
//
//  Created by wuxue on 2017/5/16.
//  Copyright © 2017年 wsg. All rights reserved.
//

#import "Session.h"

@implementation Session
- (NSTimeInterval)progressTime {
    
    if (_finishDate) {
        return [_finishDate timeIntervalSinceDate:self.startDate];
    }
    else {
        return [[NSDate date] timeIntervalSinceDate:self.startDate];
    }
}
@end
