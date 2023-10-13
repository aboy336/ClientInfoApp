//
//  ViewController.m
//  ClientInfoApp
//
//  Created by Joshua Barnes on 10/1/23.
//
// ViewController.m

#import "ViewController.h"
#import "AppDelegate.h"
#import "Client+CoreDataClass.h"

@interface ViewController ()

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AppDelegate *appDelegate = (AppDelegate *)[[NSApplication sharedApplication] delegate];
    self.managedObjectContext = appDelegate.persistentContainer.viewContext;
}

- (IBAction)newClientButtonPressed:(id)sender {
    // Clear the text fields for a new client
    [self clearFields];
}

- (IBAction)saveButtonPressed:(id)sender {
    // Create a new Client managed object
    Client *newClient = [NSEntityDescription insertNewObjectForEntityForName:@"Client" inManagedObjectContext:self.managedObjectContext];
    
    newClient.name = self.name.stringValue;
    newClient.phone = self.phone.stringValue;
    newClient.company = self.company.stringValue;
    newClient.userid = self.userID.stringValue;
    newClient.clientid = self.clientID.stringValue;
    newClient.errorid = self.errorID.stringValue;
    newClient.notes = self.notes.stringValue;
    
    // Save the context
    NSError *error = nil;
    if (![self.managedObjectContext save:&error]) {
        NSLog(@"Error saving context: %@", error);
    }
    
    // Clear the text fields
    [self clearFields];
}


- (IBAction)clearButtonPressed:(id)sender {
    // Clear the text fields
    [self clearFields];
}

- (void)clearFields {
    self.name.stringValue = @"";
    self.phone.stringValue = @"";
    self.company.stringValue = @"";
    self.userID.stringValue = @"";
    self.clientID.stringValue = @"";
    self.errorID.stringValue = @"";
    self.notes.stringValue = @"";
}

- (void)NewClient:(id)sender __attribute__((ibaction)) {
}

- (void)Clear:(id)sender __attribute__((ibaction)) {
}

- (void)Save:(id)sender __attribute__((ibaction)) {
}

@end
