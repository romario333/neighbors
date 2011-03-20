//
//  NeighborsServer.m
//  Neighbors-iOS
//
//  Created by Roman Masek on 3/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NeighborsServer.h"


@implementation NeighborsServer

- (NSArray *)getPeopleWithLocation:(id *)location
{
    NSLog(@"Getting people at location %@.", location);
    
    Person *p1 = [Person personWithNickname: @"Ludva"];
    Person *p2 = [Person personWithNickname: @"Bohumil"];
    Person *p3 = [Person personWithNickname: @"Karel"];
    
    NSArray *people = [NSArray arrayWithObjects:p1, p2, p3, nil];
    return people;
}

@end
