//
//  AccountAllocation.h
//  osxledger
//
//  Created by Brett Hutley on 22/09/2011.
//  Copyright 2011 Stimuli Limited. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AccountAllocation : NSObject {
    NSString *account_;
    NSNumber *amount_;
}

@property (nonatomic, copy) NSString *account;
@property (nonatomic, copy) NSNumber *amount;

- (id) initWithAccount: (NSString *) account andAmount: (NSNumber *) amount;

@end
