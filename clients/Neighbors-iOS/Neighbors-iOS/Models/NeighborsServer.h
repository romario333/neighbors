//
//  NeighborsServer.h
//  Neighbors-iOS
//
//  Created by Roman Masek on 3/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

@interface NeighborsServer : NSObject {
    
}

- (NSArray *)getPeopleWithLocation:(id *)location;

@end
