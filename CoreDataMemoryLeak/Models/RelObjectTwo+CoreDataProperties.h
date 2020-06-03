//
//  RelObjectTwo+CoreDataProperties.h
//  CoreDataMemoryLeak
//
//  Created by Eric Amorde on 6/3/20.
//  Copyright © 2020 Eric Amorde. All rights reserved.
//
//

#import "RelObjectTwo+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface RelObjectTwo (CoreDataProperties)

+ (NSFetchRequest<RelObjectTwo *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, retain) MainEntity *mainEntity;

@end

NS_ASSUME_NONNULL_END
