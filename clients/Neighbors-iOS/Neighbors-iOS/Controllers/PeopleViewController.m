//
//  FirstViewController.m
//  Neighbors-iOS
//
//  Created by Roman Masek on 3/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PeopleViewController.h"


@implementation PeopleViewController

- (void)dealloc
{
    [peopleTable release];
    [super dealloc];
}

#pragma mark -
#pragma mark UIViewController Members

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NeighborsAppDelegate *appDelegate = (NeighborsAppDelegate*)[[UIApplication sharedApplication] delegate];
    people = [appDelegate.neighborsServer getPeopleWithLocation:nil];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload
{
    [peopleTable release];
    peopleTable = nil;
    [people release];
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

#pragma mark -
#pragma mark UITableViewDataSource Members

- (UITableViewCell *)tableView:(UITableView *)tv cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // TODO: jak presne tohle funguje?
    UITableViewCell *cell = [tv dequeueReusableCellWithIdentifier:@"cell"];
    if ( nil == cell )
    {
        cell = [[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:@"cell"];
    }
    
    Person *person = [people objectAtIndex:indexPath.row];
    cell.textLabel.text = person.nickname;
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return people.count;
}

#pragma mark -
#pragma mark UITableViewDelegate Members

- (void)tableView:(UITableView *)tv didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    CityGuideDelegate *delegate = [[UIApplication sharedApplication] delegate];
//    
//    if (indexPath.row < cities.count && !self.editing)
//    {
//        CityController *city = [[CityController alloc] initWithIndexPath:indexPath];
//        [delegate.navController pushViewController:city animated:YES];
//        [city release];
//    }
//    
//    if (indexPath.row == cities.count && self.editing)
//    {
//        AddCityController *addCity = [[AddCityController alloc] init];
//        [delegate.navController pushViewController:addCity animated:YES];
//        [addCity release];
//    }
//    
//    [tv deselectRowAtIndexPath:indexPath animated:YES];
}



@end
