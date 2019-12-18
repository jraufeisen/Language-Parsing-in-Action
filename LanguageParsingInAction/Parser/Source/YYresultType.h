//
//  ResultType.h
//  LanguageParsingInAction
//
//  Created by Johannes on 18.12.19.
//  Copyright © 2019 Johannes Raufeisen. All rights reserved.
//
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YYresultType : NSObject

- (float) value;
- (NSString *) identifier;
- (void) setvalue: (float)input;
- (void) setidentifier: (NSString *)input;

@end

NS_ASSUME_NONNULL_END
