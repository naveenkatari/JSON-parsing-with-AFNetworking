//
//  GroupBuilder.h
//  BrowseMeetup
//
//  Created by Naveen Katari on 05/01/16.
//  Copyright © 2016 TAMIM Ziad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GroupBuilder : NSObject

+(NSArray *)groupsFromJSON:(NSData *)objectNotation: (NSError *)error;

@end
