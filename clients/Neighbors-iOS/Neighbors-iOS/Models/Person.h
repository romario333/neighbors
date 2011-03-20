//
//  Person.h
//  Neighbors-iOS
//
//  Created by Roman Masek on 3/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject {
    
}

@property (nonatomic, retain) NSString *nickname;

// TODO: jen kvuli testum
+ (id)personWithNickname:(NSString *)nickname;

@end
