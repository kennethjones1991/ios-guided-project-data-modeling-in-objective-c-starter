//
//  QuakeResults.h
//  Quakes-Objc
//
//  Created by Kenneth Jones on 11/17/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Quake;

NS_ASSUME_NONNULL_BEGIN

@interface QuakeResults : NSObject

- (instancetype)initWithQuakes:(NSArray<Quake *> *)someQuakes NS_DESIGNATED_INITIALIZER;

- (nullable instancetype)initWithDictionary:(NSDictionary *)aDictionary;

@property (nonatomic, readonly, copy) NSArray<Quake *> *quakes;

@end

NS_ASSUME_NONNULL_END
