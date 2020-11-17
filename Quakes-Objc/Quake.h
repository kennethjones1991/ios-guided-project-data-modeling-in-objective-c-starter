//
//  Quake.h
//  Quakes-Objc
//
//  Created by Kenneth Jones on 11/16/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Quake : NSObject

- (instancetype)initWithMagnitude:(double)aMagnitude
                            place:(NSString *)aPlace
                             time:(NSDate *)aTime
                         latitude:(double)aLatitude
                        longitude:(double)aLongitude
                             type:(NSString *)aType
                            alert:(nullable NSString *)anAlert NS_DESIGNATED_INITIALIZER;

- (nullable instancetype)initWithDictionary:(NSDictionary *)aDictionary;

@property (nonatomic, readonly) double magnitude;
@property (nonatomic, readonly, copy) NSString *place;
@property (nonatomic, readonly) NSDate *time;
@property (nonatomic, readonly) double latitude;
@property (nonatomic, readonly) double longitude;

@property (nonatomic, readonly, copy) NSString *type;
@property (nonatomic, readonly, copy, nullable) NSString *alert;

@property (nonatomic, readonly, copy) NSDictionary *dictionaryValue;

@end

NS_ASSUME_NONNULL_END
