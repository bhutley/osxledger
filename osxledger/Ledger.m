//
//  Ledger.m
//  osxledger
//
//  Created by Brett Hutley on 22/09/2011.
//  Copyright 2011 Stimuli Limited. All rights reserved.
//

#import "Ledger.h"

@implementation Ledger

@synthesize filename = filename_;
@synthesize entryListByDate = entryListByDate_;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void) dealloc
{
    [filename_ release];
    [entryListByDate_ release];
    [super dealloc];
}

- (void) addLedgerEntry: (LedgerEntry *)entry
{
    [entry retain];
    NSMutableArray *entryList = (NSMutableArray *)[entryListByDate_ objectForKey:entry.date];
    if (!entryList)
    {
        entryList = [[NSMutableArray alloc] init];
        [entryListByDate_ setObject:entryList forKey:entry.date];
        [entryList autorelease];
    }
    [entryList addObject:entry];
    [entry release];
}


@end
