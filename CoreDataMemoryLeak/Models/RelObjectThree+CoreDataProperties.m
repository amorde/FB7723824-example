//
//  RelObjectThree+CoreDataProperties.m
//  CoreDataMemoryLeak
//
//  Created by Eric Amorde on 6/3/20.
//  Copyright © 2020 Eric Amorde. All rights reserved.
//
//

#import "RelObjectThree+CoreDataProperties.h"

@implementation RelObjectThree (CoreDataProperties)

+ (NSFetchRequest<RelObjectThree *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"RelObjectThree"];
}

@dynamic name;
@dynamic mainObject;

@end
