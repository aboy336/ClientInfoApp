//
//  ViewController.h
//  ClientInfoApp
//
//  Created by Joshua Barnes on 10/1/23.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

- (IBAction)NewClient:(id)sender;
- (IBAction)Save:(id)sender;
- (IBAction)Clear:(id)sender;
@property (weak) IBOutlet NSTextField *name;
@property (weak) IBOutlet NSTextField *phone;
@property (weak) IBOutlet NSTextField *company;
@property (weak) IBOutlet NSTextField *userID;
@property (weak) IBOutlet NSTextField *clientID;
@property (weak) IBOutlet NSTextField *errorID;
@property (weak) IBOutlet NSTextField *notes;


@end

