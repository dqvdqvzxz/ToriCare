//
//  TRCObject.m
//  ToriCare
//
//  Created by Mèo Béo on 6/20/17.
//  Copyright © 2017 Mèo Béo. All rights reserved.
//

#import "TRCObject.h"

@implementation TRCObject

@synthesize userToken;
@synthesize userDefaults;

#pragma mark - Singleton Methods
+(id)sharedObjects{
    static TRCObject *sharedObjects = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedObjects = [[self alloc] init];
    });
    return sharedObjects;
}

-(id)init{
    if(self = [super init]){
        userToken = [[NSString alloc] init];
        userDefaults = [NSUserDefaults standardUserDefaults];
    }
    return self;
}


@end
