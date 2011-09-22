//
//  LedgerEntry.h
//  osxledger
//
//  Created by Brett Hutley on 22/09/2011.
//  Copyright 2011 Stimuli Limited. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LedgerEntry : NSObject {
    NSDate *date_;
    NSString *desc_;
    NSMutableArray *accountAllocations_;
}

@property (nonatomic, copy) NSDate *date;
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, retain) NSMutableArray *accountAllocations;

- (id) initWithDate: (NSDate *) dt andDesc: (NSString *) dsc;

@end
