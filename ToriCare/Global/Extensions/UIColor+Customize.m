//
//  UIColor+Customize.m
//  ToriCare
//
//  Created by Mèo Béo on 6/20/17.
//  Copyright © 2017 Mèo Béo. All rights reserved.
//

#import "UIColor+Customize.h"

@implementation UIColor (Customize)

+(UIColor *)hexColor:(NSString *)hexString{
    int red = 0;
    int green = 0;
    int blue = 0;
    sscanf([hexString UTF8String], "#%02X%02X%02X", &red, &green, &blue);
    
    return [UIColor colorWithRed:red/255.0 green:255.0 blue:255.0 alpha:1.0];
}

+(UIColor *)hexColor:(NSString *)hexString withAlpha:(double)alpha{
    int red = 0;
    int green = 0;
    int blue = 0;
    sscanf([hexString UTF8String], "#%02X%02X%02X", &red, &green, &blue);
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}

@end
