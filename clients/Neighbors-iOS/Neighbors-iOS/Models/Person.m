//
//  Person.m
//  Neighbors-iOS
//
//  Created by Roman Masek on 3/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize nickname;

- (void)dealloc
{
    NSLog(@"Going to dealloc %@", nickname);
    [nickname release];
    [super dealloc];
}

+(id)personWithNickname:(NSString *)nickname
{
    Person *person = [Person new];
    person.nickname = nickname;
    return person;
}


@end
