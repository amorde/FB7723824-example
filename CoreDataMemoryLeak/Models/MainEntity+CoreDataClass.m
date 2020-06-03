//
//  MainEntity+CoreDataClass.m
//  CoreDataMemoryLeak
//
//  Created by Eric Amorde on 6/3/20.
//  Copyright © 2020 Eric Amorde. All rights reserved.
//
//

#import "MainEntity+CoreDataClass.h"
#import "MainEntity+CoreDataProperties.h"

@implementation MainEntity

- (void)awakeFromInsert
{
    [super awakeFromInsert];

    self.relObjectOne = (id)[NSEntityDescription insertNewObjectForEntityForName:@"RelObjectOne" inManagedObjectContext:self.managedObjectContext];
    self.relObjectTwo = (id)[NSEntityDescription insertNewObjectForEntityForName:@"RelObjectTwo" inManagedObjectContext:self.managedObjectContext];
    self.relObjectThree = (id)[NSEntityDescription insertNewObjectForEntityForName:@"RelObjectThree" inManagedObjectContext:self.managedObjectContext];
    self.relObjectFour = (id)[NSEntityDescription insertNewObjectForEntityForName:@"RelObjectFour" inManagedObjectContext:self.managedObjectContext];
}

@end
