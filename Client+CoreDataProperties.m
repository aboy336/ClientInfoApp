//
//  Client+CoreDataProperties.m
//  ClientInfoApp
//
//  Created by Joshua Barnes on 10/1/23.
//
//

#import "Client+CoreDataProperties.h"

@implementation Client (CoreDataProperties)

+ (NSFetchRequest<Client *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"Client"];
}

@dynamic name;
@dynamic phone;
@dynamic company;
@dynamic userid;
@dynamic clientid;
@dynamic errorid;
@dynamic notes;

@end
