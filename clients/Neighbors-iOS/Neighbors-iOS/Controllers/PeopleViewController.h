//
//  FirstViewController.h
//  Neighbors-iOS
//
//  Created by Roman Masek on 3/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NeighborsAppDelegate.h"


@interface PeopleViewController : UIViewController<UITableViewDataSource, UITableViewDelegate> {

    IBOutlet UITableView *peopleTable;
    NSArray *people;

}

@end
