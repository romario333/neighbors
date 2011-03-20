//
//  TestObject.m
//  Neighbors-iOS
//
//  Created by Roman Masek on 3/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TestObject.h"


@implementation TestObject

- (id)init
{
    // Subclass implementations of this method should initialize and return the new object. If it can’t be initialized, they should release the object and return nil. In some cases, an init method might release the new object and return a substitute.
    self = [super init];
    if (self)
    {
        _value = @"Alive and well.";
    }
    return self;
}

- (void)dealloc
{
    _value = nil;
    [super dealloc];
}

- (NSString *)value
{
    return _value;
}

@end
