//
//  Ledger.h
//  osxledger
//
//  Created by Brett Hutley on 22/09/2011.
//  Copyright 2011 Stimuli Limited. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LedgerEntry.h"

@interface Ledger : NSObject {
    NSString *filename_;
    NSMutableDictionary *entryListByDate_;
}

@property (nonatomic, copy) NSString *filename;
@property (nonatomic, retain) NSMutableDictionary *entryListByDate;

- (void) addLedgerEntry: (LedgerEntry *)entry;

@end
