//
//  TRCPreLoginViewController.m
//  ToriCare
//
//  Created by Mèo Béo on 6/20/17.
//  Copyright © 2017 Mèo Béo. All rights reserved.
//

#import "TRCPreLoginViewController.h"

@interface TRCPreLoginViewController ()

@end

@implementation TRCPreLoginViewController

@synthesize tvPolicy;
@synthesize btnRegister;
@synthesize btnLogin;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Config UI
-(void)configUI{
    tvPolicy.editable = NO;
    
    btnRegister.layer.borderWidth = 1.0f;
    btnRegister.layer.borderColor = [UIColor blackColor].CGColor;
    [btnRegister setTitle:kBtnRegister forState:UIControlStateNormal];
    
    btnLogin.layer.borderWidth = 1.0f;
    btnLogin.layer.borderColor = [UIColor blackColor].CGColor;
    [btnLogin setTitle:kBtnLogin forState:UIControlStateNormal];
    
    [self.navigationController setNavigationBarHidden:YES animated:NO];
}

#pragma mark - Button Action
- (IBAction)btnRegisterClick:(id)sender {
}

- (IBAction)btnLoginClick:(id)sender {
    TRCLoginViewController *vc = [[TRCLoginViewController alloc] initWithNibName:@"TRCLoginViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
