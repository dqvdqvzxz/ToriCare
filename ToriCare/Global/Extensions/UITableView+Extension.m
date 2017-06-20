//
//  UITableView+Extension.m
//  ToriCare
//
//  Created by Mèo Béo on 6/20/17.
//  Copyright © 2017 Mèo Béo. All rights reserved.
//

#import "UITableView+Extension.h"

@implementation UITableView (Extension)

-(void)registerCellClass:(id)anyClass{
    [self registerClass:anyClass forCellReuseIdentifier:NSStringFromClass([anyClass class])];
}

-(void)registerNibForClass:(id)anyClass{
    [self registerNib:[UINib nibWithNibName:NSStringFromClass([anyClass class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([anyClass class])];
}

- (UITableViewCell *)dequeueReusableCellWithIdentifierClass:(id)anyClass{
    return [self dequeueReusableCellWithIdentifier:NSStringFromClass([anyClass class])];
}

-(UITableViewCell *)dequeueReusableCellWithIdentifierClass:(id)anyClass indexPath:(NSIndexPath *)indexPath{
    return [self dequeueReusableCellWithIdentifier:NSStringFromClass([anyClass class]) forIndexPath:indexPath];
}

@end
