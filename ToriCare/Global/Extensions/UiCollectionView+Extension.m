//
//  UiCollectionView+Extension.m
//  ToriCare
//
//  Created by Mèo Béo on 6/20/17.
//  Copyright © 2017 Mèo Béo. All rights reserved.
//

#import "UiCollectionView+Extension.h"

@implementation UICollectionView (Extension)

-(void)registerCellClass:(id)anyClass{
    [self registerClass:anyClass forCellWithReuseIdentifier:NSStringFromClass([anyClass class])];
}

-(void)registerNibForClass:(id)anyClass{
    [self registerNib:[UINib nibWithNibName:NSStringFromClass([anyClass class]) bundle:nil] forCellWithReuseIdentifier:NSStringFromClass([anyClass class])];
}

-(UICollectionViewCell *)dequeueReusableCellWithIdentifierClass:(id)anyClass indexPath:(NSIndexPath *)indexPath{
    return [self dequeueReusableCellWithReuseIdentifier:NSStringFromClass([anyClass class]) forIndexPath:indexPath];
}
    

@end
