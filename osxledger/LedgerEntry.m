//
//  LedgerEntry.m
//  osxledger
//
//  Created by Brett Hutley on 22/09/2011.
//  Copyright 2011 Stimuli Limited. All rights reserved.
//

#import "LedgerEntry.h"

@implementation LedgerEntry

@synthesize date = date_;
@synthesize desc = desc_;
@synthesize accountAllocations = accountAllocations_;

- (id)initWithDate:(NSDate *)dt andDesc:(NSString *)dsc
{
    self = [super init];
    if (self) {
        self.date = dt;
        self.desc = dsc;
        self.accountAllocations = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void) dealloc
{
    [date_ release];
    [desc_ release];
    [accountAllocations_ release];
    [super dealloc];
}

@end
