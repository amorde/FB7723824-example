//
//  ViewController.m
//  CoreDataMemoryLeak
//
//  Created by Eric Amorde on 6/3/20.
//  Copyright © 2020 Eric Amorde. All rights reserved.
//

#import "ViewController.h"
@import CoreData;
#import "MainEntity+CoreDataClass.H"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    label.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    label.text = @"Loading...";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    label.center = self.view.center;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    [self performModelLoading];

    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Check memory!"
                                                                   message:@"Open the memory graph debugger to view the number of NSEntityDescription and related objects that are alive" preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alert animated:YES completion:NULL];
}

- (void)performModelLoading
{
    /// This is meant to mimic a flow that occurs in unit tests which setup and tear down fresh Core Data stacks for each run
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"Model" withExtension:@".momd"];
    for(int i = 0; i < 2000; i++) {
        NSManagedObjectModel *model = [[NSManagedObjectModel alloc] initWithContentsOfURL:url];
        NSPersistentStoreCoordinator *psc = [[NSPersistentStoreCoordinator alloc]
                                             initWithManagedObjectModel:model];
        NSPersistentStore *store = [psc addPersistentStoreWithType:NSInMemoryStoreType configuration:nil URL:nil options:nil error:nil];

        NSManagedObjectContext *context = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
        context.persistentStoreCoordinator = psc;

        __unused MainEntity *obj = [NSEntityDescription insertNewObjectForEntityForName:@"MainEntity" inManagedObjectContext:context];
        [context save:NULL];

        [psc removePersistentStore:store error:NULL];
    }
    /// After running this, there will be thousands of `NSEntityDescription` instances
    /// as well as many generated subclasses of `NSManagedObject` for each entity,
    /// such as `MainEntity_MainEntity_`, `MainEntity_MainEntity_1`, `MainEntity_MainEntity_2`, etc.
}


@end
