//
//  Quake.m
//  Quakes-Objc
//
//  Created by Dimitri Bouniol Lambda on 9/21/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "Quake.h"

@implementation Quake

- (instancetype)initWithMagnitude:(double)aMagnitude place:(NSString *)aPlace time:(NSDate *)aTime latitude:(double)aLatitude longitude:(double)aLongitude
{
    if (self = [super init]) {
        _magnitude = aMagnitude;
        _place = aPlace.copy;
        _time = aTime;
        _latitude = aLatitude;
        _longitude = aLongitude;
    }
    return self;
}

@end
