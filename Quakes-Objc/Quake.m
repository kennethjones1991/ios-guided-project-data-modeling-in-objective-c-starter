//
//  Quake.m
//  Quakes-Objc
//
//  Created by Dimitri Bouniol Lambda on 9/21/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "Quake.h"

@implementation Quake

- (instancetype)init
{
    return [self initWithMagnitude:0
                             place:@""
                              time:NSDate.now
                          latitude:0
                         longitude:0
                              type:@""
                             alert:nil];
}

- (instancetype)initWithMagnitude:(double)aMagnitude place:(NSString *)aPlace time:(NSDate *)aTime latitude:(double)aLatitude longitude:(double)aLongitude type:(NSString *)aType alert:(NSString *)anAlert
{
    if (self = [super init]) {
        _magnitude = aMagnitude;
        _place = aPlace.copy;
        _time = aTime;
        _latitude = aLatitude;
        _longitude = aLongitude;
        _type = aType.copy;
        _alert = anAlert.copy;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    NSDictionary *properties = [dictionary objectForKey:@"properties"];
    if (![properties isKindOfClass:NSDictionary.class]) return nil;
    
    NSNumber *magnitudeNumber = [properties objectForKey:@"mag"];
    if (![magnitudeNumber isKindOfClass:NSNumber.class]) return nil;
    
    return [self initWithMagnitude:magnitudeNumber.doubleValue
                             place:@""
                              time:NSDate.now
                          latitude:0
                         longitude:0
                              type:@""
                             alert:nil];
}

@end
