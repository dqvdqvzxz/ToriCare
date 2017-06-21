//
//  TRCLoginViewController.h
//  ToriCare
//
//  Created by Mèo Béo on 6/20/17.
//  Copyright © 2017 Mèo Béo. All rights reserved.
//

#import <UIKit/UIKit.h>

//view controller
#import "TRCBaseViewController.h"
#import "TRCHomeViewController.h"

//libraries
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>

@interface TRCLoginViewController : TRCBaseViewController

@property (weak, nonatomic) IBOutlet UILabel *lblUsername;
@property (weak, nonatomic) IBOutlet UITextField *txtUsername;
@property (weak, nonatomic) IBOutlet UILabel *lblPassword;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
@property (weak, nonatomic) IBOutlet UIButton *btnLogin;
@property (weak, nonatomic) IBOutlet UIButton *btnLoginWithFB;

- (IBAction)btnLoginClick:(id)sender;
- (IBAction)btnLoginWithFBClick:(id)sender;


@end
