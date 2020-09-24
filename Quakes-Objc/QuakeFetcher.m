//
//  QuakeFetcher.m
//  Quakes-Objc
//
//  Created by Dimitri Bouniol Lambda on 9/23/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "QuakeFetcher.h"

static NSString *const QuakeFetcherBaseURLString = @"https://earthquake.usgs.gov/fdsnws/event/1/query";

@implementation QuakeFetcher

+ (void)fetchQuakesInTimeInterval:(NSDateInterval *)interval
                completionHandler:(QuakeFetcherCompletionHandler)completionHandler
{
    NSURLComponents *urlComponents = [[NSURLComponents alloc] initWithString:QuakeFetcherBaseURLString];
    
    
}

@end
