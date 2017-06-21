//
//  TRCObject.h
//  ToriCare
//
//  Created by Mèo Béo on 6/20/17.
//  Copyright © 2017 Mèo Béo. All rights reserved.
//

#import <Foundation/Foundation.h>

#define _obj [TRCObject sharedObjects]

@interface TRCObject : NSObject

+(TRCObject *_Nonnull)sharedObjects;

@property (nonnull, retain) NSString *userToken;

@property (nonnull, retain) NSUserDefaults *userDefaults;

@end
