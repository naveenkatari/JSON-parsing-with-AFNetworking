//
//  MeetupCommunicator.h
//  BrowseMeetup
//
//  Created by Naveen Katari on 05/01/16.
//  Copyright © 2016 TAMIM Ziad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@protocol MeetupCommunicatorDelegate;

@interface MeetupCommunicator : NSObject

@property (weak, nonatomic) id<MeetupCommunicatorDelegate> delegate;
@property (nonatomic, strong) NSURLSession *defaultSession;

-(void)searchGroupsAtCoordinate:(CLLocationCoordinate2D)coordinate;

@end
