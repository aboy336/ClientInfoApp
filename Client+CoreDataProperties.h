//
//  Client+CoreDataProperties.h
//  ClientInfoApp
//
//  Created by Joshua Barnes on 10/1/23.
//
//

#import "Client+CoreDataClass.h"
#import "CoreData/CoreData.h"


NS_ASSUME_NONNULL_BEGIN

@interface Client (CoreDataProperties)

+ (NSFetchRequest<Client *> *)fetchRequest NS_SWIFT_NAME(fetchRequest());

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, copy) NSString *phone;
@property (nullable, nonatomic, copy) NSString *company;
@property (nullable, nonatomic, copy) NSString *userid;
@property (nullable, nonatomic, copy) NSString *clientid;
@property (nullable, nonatomic, copy) NSString *errorid;
@property (nullable, nonatomic, copy) NSString *notes;

@end

NS_ASSUME_NONNULL_END
