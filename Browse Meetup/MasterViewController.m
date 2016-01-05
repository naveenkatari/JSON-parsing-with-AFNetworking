//
//  MasterViewController.m
//  Read JSON
//
//  Created by Naveen Katari on 5/1/16.
//  Copyright (c) 2016 Naveen Katari. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailCell.h"


@interface MasterViewController () {
    NSArray *_groups;
}
@property (weak, nonatomic) CLLocationManager *locationManager;
@end

@implementation MasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

#pragma mark - Accessors

- (CLLocationManager *)locationManager
{
    if (_locationManager) {
        return _locationManager;
    }
    
    id appDelegate = [[UIApplication sharedApplication] delegate];
    if ([appDelegate respondsToSelector:@selector(locationManager)]) {
        _locationManager = [appDelegate performSelector:@selector(locationManager)];
    }
    return _locationManager;
}

#pragma mark - Notification Observer


#pragma mark - MeetupManagerDelegate


#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _groups.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    
    return cell;
}

@end
