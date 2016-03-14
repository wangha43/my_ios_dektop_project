//
//  SampleProtocol.m
//  uiview
//
//  Created by wxc on 16/3/1.
//  Copyright © 2016年 wxc. All rights reserved.
//

#import "SampleProtocol.h"

@implementation SampleProtocol
-(void)startSampleProcess{
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self.delegate
                                   selector:@selector(processCompleted) userInfo:nil repeats:NO];
}
@end
