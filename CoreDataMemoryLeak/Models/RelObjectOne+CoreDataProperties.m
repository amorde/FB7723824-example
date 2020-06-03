//
//  RelObjectOne+CoreDataProperties.m
//  CoreDataMemoryLeak
//
//  Created by Eric Amorde on 6/3/20.
//  Copyright © 2020 Eric Amorde. All rights reserved.
//
//

#import "RelObjectOne+CoreDataProperties.h"

@implementation RelObjectOne (CoreDataProperties)

+ (NSFetchRequest<RelObjectOne *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"RelObjectOne"];
}

@dynamic name;
@dynamic mainObject;

@end
