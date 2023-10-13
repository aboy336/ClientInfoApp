//
//  AppDelegate.h
//  ClientInfoApp
//
//  Created by Joshua Barnes on 10/1/23.
//

#import <Cocoa/Cocoa.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;


@end

