//
//  UIViewController+Extension.m
//  ToriCare
//
//  Created by Mèo Béo on 6/20/17.
//  Copyright © 2017 Mèo Béo. All rights reserved.
//

#import "UIViewController+Extension.h"

@implementation UIViewController (Extension)

-(void)setCustomTitle:(NSString *)title{
    NSDictionary *attributes = @{NSForegroundColorAttributeName : [UIColor blackColor],
                                 NSFontAttributeName : [UIFont systemFontOfSize:20.0f]};
    NSMutableAttributedString *titleString = [[NSMutableAttributedString alloc] initWithString:title attributes:attributes];
    UILabel *titleLabel = [UILabel new];
    titleLabel.attributedText = titleString;
    [titleLabel sizeToFit];
    self.navigationItem.titleView = titleLabel;
}

-(void)customBackButton{
    UIButton *customBackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 25, 25)];
    customBackButton.multipleTouchEnabled = NO;
    customBackButton.exclusiveTouch = YES;
    [customBackButton setImage:[UIImage imageNamed:@"btn_back"] forState:UIControlStateNormal];
    customBackButton.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 10);
    [customBackButton addTarget:self action:@selector(customPopViewController) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *customBack = [[UIBarButtonItem alloc] initWithCustomView:customBackButton];
    self.navigationItem.leftBarButtonItem = customBack;
}

-(void)customPopViewController{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
