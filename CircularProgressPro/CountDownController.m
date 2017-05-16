





//
//  CountDownController.m
//  eCamera
//
//  Created by wuxue on 2017/5/16.
//  Copyright © 2017年 coder. All rights reserved.
//

#import "CountDownController.h"
#import "CircleProgressView.h"
#import "Session.h"

@interface CountDownController ()

@property (strong, nonatomic) NSTimer *timer;
@property (nonatomic) Session *session;

@property (weak, nonatomic) IBOutlet CircleProgressView *circleProgressView;


@end

@implementation CountDownController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.session = [[Session alloc] init];
    self.session.state = kSessionStateStop;
    
    self.circleProgressView.status = NSLocalizedString(@"倒计时", nil);
    self.circleProgressView.timeLimit = 0;
    self.circleProgressView.elapsedTime = 60;
    
    
    
    [self startTimer];
    self.session.startDate = [NSDate date];
    self.session.finishDate = nil;
    self.session.state = kSessionStateStart;
    
    UIColor *tintColor = [UIColor colorWithRed:0.19f green:0.72f blue:0.76f alpha:1.00f];
    self.circleProgressView.status = NSLocalizedString(@"倒计时", nil);
    self.circleProgressView.tintColor = tintColor;
    self.circleProgressView.elapsedTime = 60;
}


- (void)startTimer {
    if ((!self.timer) || (![self.timer isValid])) {
        
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1.00
                                                      target:self
                                                    selector:@selector(poolTimer)
                                                    userInfo:nil
                                                     repeats:YES];
    }
}
- (void)poolTimer{

    if (60-self.session.progressTime<=0) {
        [self.timer invalidate];
        self.circleProgressView.elapsedTime=0;
    }
    else{
        
        [self performSelectorInBackground:@selector(timeRunLoop) withObject:nil];
    }
    
}

-(void)timeRunLoop
{
    self.circleProgressView.elapsedTime = 60-self.session.progressTime;
}

@end
