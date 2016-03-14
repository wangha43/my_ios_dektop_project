//
//  SampleProtocol.h
//  uiview
//
//  Created by wxc on 16/3/1.
//  Copyright © 2016年 wxc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SampleProtocolDelegate <NSObject>
@required
- (void) processCompleted;
@end

@interface SampleProtocol : NSObject
{
    // Delegate to respond back
    id <SampleProtocolDelegate> _delegate;
    
}
@property (nonatomic,strong) id delegate;

-(void)startSampleProcess; // Instance method

@end
