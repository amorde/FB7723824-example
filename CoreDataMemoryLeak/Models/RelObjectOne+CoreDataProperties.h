//
//  RelObjectOne+CoreDataProperties.h
//  CoreDataMemoryLeak
//
//  Created by Eric Amorde on 6/3/20.
//  Copyright © 2020 Eric Amorde. All rights reserved.
//
//

#import "RelObjectOne+CoreDataClass.h"
#import "MainEntity+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface RelObjectOne (CoreDataProperties)

+ (NSFetchRequest<RelObjectOne *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, retain) MainEntity *mainObject;

@end

NS_ASSUME_NONNULL_END
