//
//  TRCLoginViewController.m
//  ToriCare
//
//  Created by Mèo Béo on 6/20/17.
//  Copyright © 2017 Mèo Béo. All rights reserved.
//

#import "TRCLoginViewController.h"

@interface TRCLoginViewController ()

@end

@implementation TRCLoginViewController

@synthesize lblUsername;
@synthesize txtUsername;
@synthesize lblPassword;
@synthesize txtPassword;
@synthesize btnLogin;
@synthesize btnLoginWithFB;

- (void)viewDidLoad {
    [super viewDidLoad];

    [self customBackButton];
    
    [self setCustomTitle:kTitleLogin];
    
    [self configUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Config UI
-(void)configUI{
    lblUsername.text = kLblUsername;
    
    [txtUsername setPlaceholder:kLblUsername];
    
    lblPassword.text = kLblPassword;
    
    [txtPassword setPlaceholder:kLblPassword];
    
    [btnLogin setTitle:kTitleLogin forState:UIControlStateNormal];
    btnLogin.layer.borderWidth = 1.0f;
    
    [btnLoginWithFB setTitle:kBtnLoginWithFB forState:UIControlStateNormal];
    btnLoginWithFB.layer.backgroundColor = [UIColor blueColor].CGColor;
}


#pragma mark - Button Action
- (IBAction)btnLoginClick:(id)sender {
}

- (IBAction)btnLoginWithFBClick:(id)sender {
    FBSDKLoginManager *loginManager = [[FBSDKLoginManager alloc] init];
    [loginManager logInWithPublishPermissions:@[@"publish_actions"]
                           fromViewController:self
                                      handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
                                          if(error){
                                              //process error
                                              ExtendNSLog(@"Facebook login error !");
                                          }else if(result.isCancelled){
                                              //handle cancellation
                                              ExtendNSLog(@"Cancel Facebook login !");
                                          }else{
                                              //if you ask for multiple permissions at one, should check if specific permissions missing
                                              [self fetchUserInfo];
                                              ExtendNSLog(@"Get token !");
                                          }
                                      }];
}

-(void)fetchUserInfo{
    if([FBSDKAccessToken currentAccessToken]){
        ExtendNSLog(@"Token is available: %@", [[FBSDKAccessToken currentAccessToken] tokenString]);
        _obj.userToken = [[NSString alloc] initWithString:[[FBSDKAccessToken currentAccessToken] tokenString]];
        TRCHomeViewController *vc = [[TRCHomeViewController alloc] initWithNibName:@"TRCHomeViewController" bundle:nil];
        [self.navigationController pushViewController:vc animated:YES];
    }
}


@end
