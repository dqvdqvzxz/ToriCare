//
//  TRCDefine_Config.h
//  ToriCare
//
//  Created by Mèo Béo on 6/20/17.
//  Copyright © 2017 Mèo Béo. All rights reserved.
//

#import <Foundation/Foundation.h>

//device
#define IS_IPAD         (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_PHONE        (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IS_RETINE       ([[UIScreen mainScreen] scale] >= 2.0)

//screen
#define SCREEN_WIDTH        ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT       ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_MAX_LENGTH   (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))
#define SCREEN_MIN_LENGTH   (MIN(SCREEN_WIDTH, SCREEN_HEIGHT))

//system version
#define SYSTEM_VERSION                              ([[UIDevice currentDevice] systemVersion])
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([SYSTEM_VERSION compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([SYSTEM_VERSION compare:v options:NSNumericSearch] == NSOrderedAscending)

//ios version
#define IS_IOS8_OR_ABOVE    (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0"))

//color
#define RGB(r, g, b)        [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0]
#define RGBA(r, g, b, a)    [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

//config
#define ExtendNSLog(fmt, ...)       NSLog((@"\n%s [Line %d] -:- " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#define LocalizeString(string)      (NSLocalizedString(string, nil).length == 0)?(string):(NSLocalizedString(string, nil))


