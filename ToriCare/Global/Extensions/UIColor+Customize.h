//
//  UIColor+Customize.h
//  ToriCare
//
//  Created by Mèo Béo on 6/20/17.
//  Copyright © 2017 Mèo Béo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Customize)

+(UIColor *)hexColor:(NSString *)hexString;

+(UIColor *)hexColor:(NSString *)hexString withAlpha:(double)alpha;

@end
