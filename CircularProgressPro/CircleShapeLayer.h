//
//  CircleShapeLayer.h
//  CircularProgressPro
//
//  Created by wuxue on 2017/5/16.
//  Copyright © 2017年 wsg. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
@interface CircleShapeLayer : CAShapeLayer
@property (nonatomic,assign) NSTimeInterval elapsedTime;
@property (nonatomic,assign) NSTimeInterval timeLimit;
@property (assign, nonatomic, readonly) double percent;
@property (nonatomic) UIColor *progressColor;
@end
