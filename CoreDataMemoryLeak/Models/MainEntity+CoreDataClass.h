//
//  MainEntity+CoreDataClass.h
//  CoreDataMemoryLeak
//
//  Created by Eric Amorde on 6/3/20.
//  Copyright © 2020 Eric Amorde. All rights reserved.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class RelObjectOne;

NS_ASSUME_NONNULL_BEGIN

@interface MainEntity : NSManagedObject

@end

NS_ASSUME_NONNULL_END

#import "MainEntity+CoreDataProperties.h"
