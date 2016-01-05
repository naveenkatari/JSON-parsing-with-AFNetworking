//
//  MeetupCommunicator.m
//  BrowseMeetup
//
//  Created by Naveen Katari on 05/01/16.
//  Copyright © 2016 TAMIM Ziad. All rights reserved.
//

#import "MeetupCommunicator.h"
#import "MeetupCommunicatorDelegate.h"
#import <AFNetworking.h>

#define API_KEY @"1f5718c16a7fb3a5452f45193232"
#define PAGE_COUNT 20

@implementation MeetupCommunicator

-(void)searchGroupsAtCoordinate:(CLLocationCoordinate2D)coordinate
{
    NSString *urlString = [NSString stringWithFormat:@"https://api.meetup.com/2/groups?lat=%f&lon=%f&page=%d&key=%@", coordinate.latitude, coordinate.longitude, PAGE_COUNT, API_KEY];
    NSURL *url = [[NSURL alloc]initWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    
    AFHTTPRequestOperation *requestOperation = [[AFHTTPRequestOperation alloc]initWithRequest:urlRequest];
    requestOperation.responseSerializer = [AFJSONResponseSerializer serializer];
    
    __block MeetupCommunicator *blockSelf = self;
    [requestOperation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject)
    {
        [blockSelf.delegate receivedGroupsJSON:responseObject];
    }
    failure:^(AFHTTPRequestOperation *operation, NSError *error)
    {
        [blockSelf.delegate fetchingGroupsFailedWithError:error];
    }];
}

@end
