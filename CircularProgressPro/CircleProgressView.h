//
//  CircleProgressView.h
//  CircularProgressPro
//
//  Created by wuxue on 2017/5/16.
//  Copyright © 2017年 wsg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleProgressView : UIControl
@property (nonatomic) NSTimeInterval elapsedTime;

@property (nonatomic) NSTimeInterval timeLimit;

@property (nonatomic, retain) NSString *status;

@property (assign, nonatomic, readonly) double percent;
@end
