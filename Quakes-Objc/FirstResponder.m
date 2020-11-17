//
//  FirstResponder.m
//  Quakes-Objc
//
//  Created by Kenneth Jones on 11/16/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "FirstResponder.h"

//@interface FirstResponder () {
//    NSString *_name;
//}
//
//@end

@implementation FirstResponder

@synthesize name = _name;

- (void)setName:(NSString *)aName
{
    _name = aName.copy;
}

-(NSString *)name
{
    return _name.copy;
}

@end
