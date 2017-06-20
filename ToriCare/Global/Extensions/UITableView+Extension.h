//
//  UITableView+Extension.h
//  ToriCare
//
//  Created by Mèo Béo on 6/20/17.
//  Copyright © 2017 Mèo Béo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Extension)

-(void)registerCellClass:(id)anyClass;

-(void)registerNibForClass:(id)anyClass;

-(UITableViewCell *)dequeueReusableCellWithIdentifierClass:(id)anyClass;

-(UITableViewCell *)dequeueReusableCellWithIdentifierClass:(id)anyClass indexPath:(NSIndexPath *)indexPath;

@end
