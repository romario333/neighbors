//
//  PersonTest.m
//  Neighbors-iOS
//
//  Created by Roman Masek on 3/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PersonTest.h"

@implementation PersonTest

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testCreate {
    
    Person *person = [Person new];
    STAssertNotNil(person, @"Instance cannot be nil.");
}

@end
