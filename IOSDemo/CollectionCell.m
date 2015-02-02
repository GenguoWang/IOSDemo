//
//  CollectionCell.m
//  IOSDemo
//
//  Created by mark on 15/2/2.
//  Copyright (c) 2015年 mark. All rights reserved.
//

#import "CollectionCell.h"

@implementation CollectionCell

- (void)awakeFromNib {
    // Initialization code
}


- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    NSLog(@"begin");
    if (self)
    {
        // 初始化时加载collectionCell.xib文件
        NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"CollectionCell" owner:self options:nil];
        
        // 如果路径不存在，return nil
        if (arrayOfViews.count < 1)
        {
            return nil;
        }
        // 如果xib中view不属于UICollectionViewCell类，return nil
        if (![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]])
        {
            return nil;
        }
        // 加载nib
        NSLog(@"well done");
        self = [arrayOfViews objectAtIndex:0];
    }
    return self;
}

@end
