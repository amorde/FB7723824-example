//
//  RelObjectFour+CoreDataProperties.m
//  CoreDataMemoryLeak
//
//  Created by Eric Amorde on 6/3/20.
//  Copyright © 2020 Eric Amorde. All rights reserved.
//
//

#import "RelObjectFour+CoreDataProperties.h"

@implementation RelObjectFour (CoreDataProperties)

+ (NSFetchRequest<RelObjectFour *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"RelObjectFour"];
}

@dynamic name;
@dynamic mainObject;

@end
