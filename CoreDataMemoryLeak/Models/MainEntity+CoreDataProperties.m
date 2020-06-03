//
//  MainEntity+CoreDataProperties.m
//  CoreDataMemoryLeak
//
//  Created by Eric Amorde on 6/3/20.
//  Copyright © 2020 Eric Amorde. All rights reserved.
//
//

#import "MainEntity+CoreDataProperties.h"

@implementation MainEntity (CoreDataProperties)

+ (NSFetchRequest<MainEntity *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"MainEntity"];
}

@dynamic name;
@dynamic relObjectFour;
@dynamic relObjectOne;
@dynamic relObjectThree;
@dynamic relObjectTwo;

@end
