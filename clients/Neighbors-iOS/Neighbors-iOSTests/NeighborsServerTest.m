//
//  NeighborsServerTest.m
//  Neighbors-iOS
//
//  Created by Roman Masek on 3/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NeighborsServerTest.h"


@implementation NeighborsServerTest

- (void)testgetPeopleWithLocation
{
    NeighborsServer *server = [NeighborsServer new];
    NSArray *people = [server getPeopleWithLocation:nil];
    
    STAssertTrue(people.count > 0, @"Method should return some people.");
    
    for (Person *person in people)
    {
        STAssertNotNil(person.nickname, @"Person should have nickname set.");
    }
}


@end
