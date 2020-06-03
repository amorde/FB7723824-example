//
//  MainEntity+CoreDataProperties.h
//  CoreDataMemoryLeak
//
//  Created by Eric Amorde on 6/3/20.
//  Copyright © 2020 Eric Amorde. All rights reserved.
//
//

#import "MainEntity+CoreDataClass.h"
#import "RelObjectOne+CoreDataClass.h"
#import "RelObjectTwo+CoreDataClass.h"
#import "RelObjectThree+CoreDataClass.h"
#import "RelObjectFour+CoreDataClass.h"

NS_ASSUME_NONNULL_BEGIN

@interface MainEntity (CoreDataProperties)

+ (NSFetchRequest<MainEntity *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, retain) RelObjectFour *relObjectFour;
@property (nullable, nonatomic, retain) RelObjectOne *relObjectOne;
@property (nullable, nonatomic, retain) RelObjectThree *relObjectThree;
@property (nullable, nonatomic, retain) RelObjectTwo *relObjectTwo;

@end

NS_ASSUME_NONNULL_END
