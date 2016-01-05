//
//  MeetupCommunicatorDelegate.h
//  BrowseMeetup
//
//  Created by Naveen Katari on 05/01/16.
//  Copyright © 2016 TAMIM Ziad. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol MeetupCommunicatorDelegate

-(void)receivedGroupsJSON : (NSData *)objectNotation;
-(void)fetchingGroupsFailedWithError : (NSError *)error;
@end

@interface MeetupCommunicatorDelegate : NSObject

@end

