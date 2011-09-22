//
//  LedgerFile.h
//  osxledger
//
//  Created by Brett Hutley on 22/09/2011.
//  Copyright 2011 Stimuli Limited. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface LedgerFile : NSDocument {
    NSComboBox *cbAccounts_;
    NSTableView *tbEntries_;
}

@property (nonatomic, retain) IBOutlet NSComboBox *cbAccounts;
@property (nonatomic, retain) IBOutlet NSTableView *tbEntries;

@end
