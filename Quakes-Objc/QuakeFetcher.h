//
//  QuakeFetcher.h
//  Quakes-Objc
//
//  Created by Dimitri Bouniol Lambda on 9/23/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^QuakeFetcherCompletionHandler)(NSArray *_Nullable quakes, NSError *_Nullable error);

@interface QuakeFetcher : NSObject

+ (void)fetchQuakesWithCompletionHandler:(nonnull QuakeFetcherCompletionHandler)completionHandler;

+ (void)fetchQuakesInTimeInterval:(nonnull NSDateInterval *)interval completionHandler:(nonnull QuakeFetcherCompletionHandler)completionHandler;

@end
