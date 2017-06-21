//
//  TRCPreLoginViewController.h
//  ToriCare
//
//  Created by Mèo Béo on 6/20/17.
//  Copyright © 2017 Mèo Béo. All rights reserved.
//

#import <UIKit/UIKit.h>

//base view
#import "TRCBaseViewController.h"

//view controller
#import "TRCLoginViewController.h"

@interface TRCPreLoginViewController : TRCBaseViewController

@property (weak, nonatomic) IBOutlet UITextView *tvPolicy;
@property (weak, nonatomic) IBOutlet UIButton *btnRegister;
@property (weak, nonatomic) IBOutlet UIButton *btnLogin;

- (IBAction)btnRegisterClick:(id)sender;
- (IBAction)btnLoginClick:(id)sender;

@end
