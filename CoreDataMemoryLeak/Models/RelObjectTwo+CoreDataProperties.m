//
//  RelObjectTwo+CoreDataProperties.m
//  CoreDataMemoryLeak
//
//  Created by Eric Amorde on 6/3/20.
//  Copyright © 2020 Eric Amorde. All rights reserved.
//
//

#import "RelObjectTwo+CoreDataProperties.h"

@implementation RelObjectTwo (CoreDataProperties)

+ (NSFetchRequest<RelObjectTwo *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"RelObjectTwo"];
}

@dynamic name;
@dynamic mainEntity;

@end
