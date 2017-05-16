//
//  Session.h
//  CircularProgressPro
//
//  Created by wuxue on 2017/5/16.
//  Copyright © 2017年 wsg. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    kSessionStateStart = 0,
    kSessionStateStop = 1
} SessionState;

@interface Session : NSObject

@property (nonatomic, retain) NSDate * startDate;
@property (nonatomic, retain) NSDate * finishDate;
@property (nonatomic, readonly) NSTimeInterval progressTime;
@property (nonatomic) SessionState state;
@end
