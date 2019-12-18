//
//  ResultType.m
//  LanguageParsingInAction
//
//  Created by Johannes on 18.12.19.
//  Copyright © 2019 Johannes Raufeisen. All rights reserved.
//

#import "YYresultType.h"

@implementation YYresultType

float     value;
NSString *identifier;

- (float) value {
    return value;
}

- (NSString *) identifier {
    return identifier;
}


- (void) setvalue: (float)input {
    value = input;
}

- (void) setidentifier: (NSString *)input {
    identifier = input;
}

-(instancetype)init {
    self = [super init];
    
    return self;
}

@end
