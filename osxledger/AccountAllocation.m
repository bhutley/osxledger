//
//  AccountAllocation.m
//  osxledger
//
//  Created by Brett Hutley on 22/09/2011.
//  Copyright 2011 Stimuli Limited. All rights reserved.
//

#import "AccountAllocation.h"

@implementation AccountAllocation

@synthesize account = account_;
@synthesize amount = amount_;

- (id)initWithAccount:(NSString *)account andAmount:(NSNumber *)amount
{
    self = [super init];
    if (self) {
        // Initialization code here.
        self.account = account;
        self.amount = amount;
    }
    
    return self;
}

- (void) dealloc
{
    [account_ release];
    [amount_ release];
    [super dealloc];
}

@end
