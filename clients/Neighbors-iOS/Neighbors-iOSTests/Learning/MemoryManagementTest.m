//
//  MemoryManagementTest.m
//  Neighbors-iOS
//
//  Created by Roman Masek on 3/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MemoryManagementTest.h"

@implementation MemoryManagementTest

- (void)testRelease
{
    TestObject *instance = [TestObject new];
    STAssertNotNil(instance.value, @"Object is alive and well.");
    [instance release];
    STAssertNil(instance.value, @"Object has been deallocated.");
}


- (void)testRemoveFromArrayReleasesObject 
{
    TestObject *instance1 = [TestObject new];
    NSMutableArray *array = [NSMutableArray arrayWithObject:instance1];
    [instance1 release];
    
    TestObject *instance2 = [array objectAtIndex:0];
    STAssertNotNil(instance2.value, @"Object is alive and well, kept-alive only by array.");
    [array removeObjectAtIndex:0];
    STAssertNil(instance2.value, @"Object is deallocated, because instance2 is not owner (I would have to call retain).");
}


@end
